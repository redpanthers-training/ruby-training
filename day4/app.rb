require 'sinatra'
require 'net/http'
require 'open-uri'
require 'nokogiri'

get "/" do
  erb :index
end 

post "/result" do
  begin
    @domain_name = params[:domain_name]
    uri = URI(@domain_name)
    @doc = Nokogiri::HTML(open("https://#{uri}"))
    @head  = @doc.css('h1,h2,h3,h4,h5,h6')
    @links = @doc.css('a')
  rescue
   'Oops'
  end
  erb :result  
end

