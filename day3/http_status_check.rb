require 'net/http'

THREAD_POOL = 10

File.new('./top-1m-staus.csv', 'w')

class SupplierQueue

 def initialize
   @source_file = File.open("./top-1m.csv", "r")
   @queue       = Queue.new
   @lineno      = 0
 end

 def pop
   get_rows_from_file if @queue.size == 0
   @queue.pop
 end

 def empty?
   true if @lineno > 999_999
   false
 end

 private

 def get_rows_from_file
   count = 0
   @source_file.each_with_index do |line, i|
     next unless i == @lineno
     @queue.push line.split(',')
     count += 1
     if count == 10
       @lineno = @lineno + 11
       break
     end
   end
 end
end 

queue = SupplierQueue.new

def check_status domain
  uri = URI(domain)
  begin
    Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      request = Net::HTTP::Head.new uri
      http.request(request).code
    end
  rescue
    'Oops'
  end
end

threads = THREAD_POOL.times.map do
  Thread.new do
    loop do
      break if queue.empty?
      domain_with_index = queue.pop
      domain = domain_with_index.last.strip
      target_file = File.open('./top-1m-staus.csv', 'a')
      http_status = check_status("http://"+domain)
      https_status = check_status("https://"+domain)
      target_file << "#{domain_with_index.first},#{domain},#{http_status}, #{https_status}\n"
      target_file.close
    end
  end
end

threads.map(&:join)
