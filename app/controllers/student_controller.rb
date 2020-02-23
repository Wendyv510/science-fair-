require './config/environment'

class StudentController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :session_secret, "password_security" 
  end
  
  get '/students' do 
    @students = Student.all
      erb :'/students/index' 
  end 
  
  post '/students' do 
    redirect to '/students' 
  end 
  
  get '/students/new' do 
    erb :'/students/new' 
  end 
  
  post '/students/new' do
   @student = Student.find_or_create_by(:name => params[:name], :grade_level => params[:grade_level], :project => params[:project])
   @student.user = User.current_user(session) 
   @student.save 
       redirect to "/students/#{@student.id}/edit"
  end 
  
  
  get '/students/:id' do 
    @student = Student.find_by_id(params[:id]) 
       erb :'/students/show' 
  end 
  
  get '/students/:id/edit' do
       @student = Student.find_by_id(params[:id]) 
    if @student == User.current_user(session).students  
       erb :'/students/show'
    else 
      redirect to "/students" 
    end 
  end 
  
  patch '/students/:id/edit' do 
    @student = Student.find_by_id(params[:id]) 
    @student.name = params[:name] 
    @student.grade_level = params[:grade_level] 
    @student.project = params[:project] 
    @student.save 
       redirect to "/students/#{@student.id}" 
  end 
  
  delete '/students/:id' do 
    @student = Student.find_by_id(params[:id]) 
    if @student.user = User.current_user(session) 
    @student.delete  
       redirect to '/students' 
    end 
  end 
end       
  