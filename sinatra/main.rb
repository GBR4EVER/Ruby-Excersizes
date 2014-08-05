require "pry"

require "sinatra"
require "sinatra/reloader"

get "/" do
  name = "Corey Burkley"
  
  erb :home # erb is taking the :home HTML file and embedding it.
end

get "/hello" do
  "Hello world. Also, this: #{1 + 1}"
end

get "/:user" do
  "The value is #{params[:user]}."
end





