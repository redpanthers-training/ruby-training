require 'sinatra'
require 'open-uri'
require 'nokogiri'
require 'json'

get "/" do
  erb :index
end

post "/display" do
  @domain    = params[:domain] 
  json_data = {}
  begin
    @domain  = "https://"+@domain
    uri      = URI.parse(@domain)
    page     = Nokogiri::HTML(open(uri))
    json_data["h1"]=page.css("h1").map {|h| h.text}
    json_data["h2"]=page.css("h2").map {|h| h.text}
    json_data["h3"]=page.css("h3").map {|h| h.text}
    json_data["h4"]=page.css("h4").map {|h| h.text}
    json_data["h5"]=page.css("h5").map {|h| h.text}
    json_data["h6"]=page.css("h6").map {|h| h.text}
    json_data["links"]=page.css("a").map{|ln| ln["href"]}
    content_type :json
    JSON.pretty_generate json_data
  rescue Exception => e
    @source  = "Error: Unable to Connect to the Domain"
  end
end

