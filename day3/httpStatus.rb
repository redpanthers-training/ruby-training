require 'net/http'
require 'net/https'
require 'uri'
file = File.open("top-1m.csv", "r").read.split.map {|x| x.split(",")}

def process_request(index,ur)
  code_https =  request("https://www.".concat(ur))
  code_http = request("http://www.".concat(ur))
  result = File.open("result.csv", "a")
  result << "#{index},#{ur},#{code_https},#{code_http}\n"
  result.close
end

def request(ur)
  url = URI.parse(ur)
  begin
    http = Net::HTTP.new(url.host,url.port)
    http.use_ssl = true if url.scheme == "https"
    response = http.request(Net::HTTP::Get.new(url.request_uri))
    response.code.to_s
  rescue
    "ERROR"
  end
end

que = Queue.new
file.each{|f| que << f}

threads = []
6.times do
  threads << Thread.new do
    while((e = que.pop(true)) rescue nil)
      process_request e[0],e[1]
    end
  end
end

threads.each{|t| t.join}