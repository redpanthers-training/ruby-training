require 'sinatra'
require 'net/http'
require 'open-uri'
require 'nokogiri'
require 'json'

get "/" do
  erb :index
end 

post "/result" do
  begin
    json_hash = {}
    @domain_name = params[:domain_name]
    uri = URI(@domain_name)
    @doc = Nokogiri::HTML(open("https://#{uri}"))
    content_type :json
    json_hash['h1']=@doc.css('h1').map {|h| h.text}
    json_hash['h2']=@doc.css('h2').map {|h| h.text}
    json_hash['h3']=@doc.css('h3').map {|h| h.text}
    json_hash['h4']=@doc.css('h4').map {|h| h.text}
    json_hash['h5']=@doc.css('h5').map {|h| h.text}
    json_hash['h6']=@doc.css('h6').map {|h| h.text}
    json_hash['links']=@doc.css('a').map {|a| a.text}
    file = File.open("out.txt", "w+") {|f| f.write(JSON.pretty_generate(json_hash)) }
    @data = JSON.pretty_generate(json_hash)
  rescue
   'Oops'
  end
  #erb :result  
end

