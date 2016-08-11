require 'sinatra'
require 'open-uri'
require 'nokogiri'

get "/" do
  erb :index
end

post "/display" do
  @domain    = params[:domain] 
  @head      = []
  @link      = []
  begin
    @domain  = "https://"+@domain
    uri      = URI.parse(@domain)
    page     = Nokogiri::HTML(open(uri))
    @head    = page.css("h1,h2,h3,h4,h5,h6")
    @link    = page.css("a")
  rescue Exception => e
    @source  = "Error: Unable to Connect to the Domain"
  end
  erb :display_form 
end
