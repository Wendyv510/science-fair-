require './config/environment'

class UserController < ApplicationContoller


  get '/signup' do 
    
    erb :'/user/signup'
  end 
  
  post '/signup' do 
    @user = User.create(:name => params[:name], :email => params[:email], :password => params[:password])
  
      redirect to '/signin' 
  end 
  
  get '/signin' do 
    @session = session 
    erb :'/user/signin' 
  end 
  
  post "/signin" do 
    @user = User.find_by(:email => params[:email]) 
    
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id 
          erb :'/user/show'
      else 
          redirect to '/user/failure' 
      end 
  end 
  
  get "/user/failure" do
      erb :'/user/failure' 
  end 
  
  post '/logout' do 
    session.clear
    redirect to '/' 
  end 
  
end 