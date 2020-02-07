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
  
  get '/signin' do 
    
    erb :'/user/signin' 
  end 
  
  post "/signin" do 
    user = User.find_by(:email => params[:email]) 
    
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id 
          redirect to '/student/new'
      else 
          redirect to '/user/failure' 
      end 
  end 
  
  get '/logout' do 
    if Helpers.is_logged_in?(session)
      session.clear 
    else 
      redirect to '/' 
    end 
  end 
  
  get '/students' do 
    @students = Student.all 
      erb :index 
  end 
  
  get '/students/new' do 
    erb :'/students/new' 
  end 
  
  post '/students' do 
    @student = Student.create(:name => params[:name], :grade_level => params[:grade_level], :project => params[:project])
    @student.save 
    redirect to "/students/#{@student.id}"
  end 
  
  get '/students/:id' do 
    @student = Student.find_by_id(params[:id]) 
       erb :show 
  end 
  
  get '/students/:id/edit' do 
    @student = Student.find_by_id(params[:id]) 
       erb :edit 
  end 
  
  patch '/students/:id' do 
    @student = Student.find_by_id(params[:id]) 
    @student.name = params[:name] 
    @student.grade_level = params[:grade_level] 
    @student.project = params[:project] 
    @student.save 
       redirect to "/students/#{@student.id}" 
  end 
  
  delete '/students/:id' do 
    @student = Student.find_by_id(params[:id]) 
    @student.delete 
       redirect to '/students' 
  end 
      

end
