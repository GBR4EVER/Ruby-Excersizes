require "pry"

require "sinatra"
require "sinatra/reloader"


# When Sinatra's server recieves a request, the following happens:
# 
# 1.) First it recieves the request e.g. 'get "URL input" do finds the request and it must match:
# 2.) The Verb ("get" or "post")
# 3.) The Path (e.g "/hello")
#
# 4.) If it finds the path or match, Ruby code within that route's block.
#
# 5.) After finding the match, it runs the ruby code and displays the response.


get "/" do
  @names = ["ball", "puck", "frisbee"]
  
  
  @names.each do |n|
  
  end
end
  erb :home # erb is taking the :home HTML file and embedding it.
end

get "/hello" do
  "Hello world. Also, this: #{1 + 1}"
end

get "/:user" do
  "The value is #{params[:user]}."
end





