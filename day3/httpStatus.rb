require 'net/http'
require 'net/https'
require 'uri'
file = File.open("test.csv", "r").read.split.map {|x| x.split(",")}
@result = File.new("result.csv", "w")

def process_request(index,ur)
  url1 = "https://www.".concat(ur)
  url2 = "http://www.".concat(ur)
  code1 =  request(url1)
  code2 = request(url2)
  @result.write("#{index},#{ur},#{code1},#{code2}\n")
  puts Thread.list.count
end

def request(ur)
  url = URI.parse(ur)
  http = Net::HTTP.new(url.host,url.port)
  for_https(http) if url.scheme == "https"
  response = http.request(Net::HTTP::Get.new(url.request_uri))
  return response.code.to_s
end

def for_https(http)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE
end

que = Queue.new

threads = []
6.times do
  threads << Thread.new do

    { process_request element[0], (element[1]) })
end

threads.each{|t| t.join}