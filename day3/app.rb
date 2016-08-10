require 'sinatra'
@vis = 0 
get '/frank-says' do
  'Put this in your pipe & smoke it!'
end

get '/' do
  @vis = 0 
  @vis = @vis+1
  'You visited #{ @vis }'
end