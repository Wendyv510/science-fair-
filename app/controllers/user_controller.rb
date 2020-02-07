require "./config/environment" 
require "./app/models/user" 

class UserController < Sinatra::Base 
  
  configure do
    set :views, "app/views" 
    enable :sessions 
    set :session_secret, "password_security"
  end 
  
  get '/signup' do 
    
    erb :signup
  end 
  
  
end 