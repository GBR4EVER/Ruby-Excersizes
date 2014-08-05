require "pry"

require "sinatra"
require "sinatra/reloader"

get "/" do
  "Weclome, #{params['corey']}."
end

get "/hello" do
  "Hello world. Also, this: #{1 + 1}"
end

get "/:user" do
  "The value is #{params[:user]}."
end





