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
  
  #get '/logout' do 
   # if User.is_logged_in?(session)
  #    session.clear 
   # else 
    #  redirect to '/' 
    #end 
#  end 
  
  post '/logout' do 
    session.clear
    redirect to '/' 
  end 
  
end 