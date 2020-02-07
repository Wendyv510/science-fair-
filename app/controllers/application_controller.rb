require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, "password_security" 
  end

  get "/" do
    erb :welcome
  end
  
  get '/user/signup' do 
    
    erb :'/user/signup'
  end 
  
  post '/user/signup' do 
    user = User.new(:name => params[:name], :email => params[:email], :password => params[:password]) 
    
    if user.save
      redirect to '/user/login' 
    else 
      redirect to '/user/failure' 
    end 
  end 
  
  get '/user/login' do 
    
    erb :'/user/login' 
  end 
  
  post "/user/login" do 
    user = User.find_by(:email => params[:email]) 
    
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id 
          redirect to '/student/new'
      else 
          redirect to '/user/failure' 
      end 
  end 
      

end
