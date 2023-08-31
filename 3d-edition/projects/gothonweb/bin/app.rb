require 'sinatra'

set :port, 8080
set :static, true
set :public_folder, 'static'
set :views, 'views'

get '/' do
  return 'Hello World'
end

get '/hello/' do
  greeting = params[:greeting] || 'Hi There'
  erb :index, :locals => {'greeting' => greeting}
end
