require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, 'static'
set :views, 'views'

get '/' do
  return "<h1>Hello World!!!</h1>"
end

get '/hello/' do
  erb :hello_form
end

get '/hello/' do
  greeting = params[:greeting] || 'Hi There!'
  name = params[:name] || "Nobody"

  erb :index, :locals => {'greeting' => greeting, 'name' => name}
end
