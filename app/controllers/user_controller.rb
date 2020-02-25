require './config/environment'

class UserController < ApplicationController


  get '/signup' do 
    
    erb :'/user/signup'
  end 
  
  post '/signup' do 
   if params[:name] =="" || params[:email]=="" || params[:password]=="" || User.exists?(:email => params[:email])  
      redirect to '/signup' 
   else 
    @user = User.create(:name => params[:name], :email => params[:email], :password => params[:password])
     @user.save 
      redirect to '/signin'
    end 
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