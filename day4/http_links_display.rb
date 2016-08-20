require 'sinatra'
require 'open-uri'
require 'nokogiri'
require 'json'

def create_json(page, tags)
  json_data = {}
  tags.each do |tag|
    if tag == "a"
      json_data["links"] = page.css(tag).map { |t| t["href"] }
    else
      json_data[tag] = page.css(tag).map { |t| t.text }
    end
  end
  json_data
end

get "/" do
  erb :index
end

post "/display" do 
  begin
    tags      = ["h1","h2","h3","h4","h5","h6","a"]
    page      = Nokogiri::HTML(open("http://"+params[:domain]))
    content_type :json
    JSON.pretty_generate (create_json page, tags)
  rescue Exception => e
    source  = "Error: Unable to Connect to the Domain\n #{e}"
  end
end
