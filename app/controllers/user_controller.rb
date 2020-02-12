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
    
    if @user.persisted?
      redirect to '/signin' 
    else 
      @user.save 
    end 
  end 
  
  get '/signin' do 
    
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
  
  get '/logout' do 
    if Helpers.is_logged_in?(session)
      session.clear 
    else 
      redirect to '/' 
    end 
  end 
  
  post '/logout' do 
    redirect to '/' 
  end 
  
end 