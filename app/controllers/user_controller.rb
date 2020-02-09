require './config/environment'

class UserController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, "password_security" 
  end



  get '/signup' do 
    
    erb :'/user/signup'
  end 
  
  post '/signup' do 
    user = User.new(:name => params[:name], :email => params[:email], :password => params[:password]) 
    
    if user.save
      redirect to '/user/signin' 
    else 
      redirect to '/user/failure' 
    end 
  end 
  
  get '/user/signin' do 
    
    erb :'/user/signin' 
  end 
  
  post "/signin" do 
    user = User.find_by(:email => params[:email]) 
    
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id 
          erb :'/students/new'
      else 
          redirect to '/user/failure' 
      end 
  end 
  
  get "/user/failure" do
      erb :'/user/failure' 
  end 
  
  get '/logout' do 
    if Helpers.is_logged_in?(session)
      session.clear 
    else 
      redirect to '/' 
    end 
  end 
  
end 