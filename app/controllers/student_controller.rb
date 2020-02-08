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
      erb :index 
  end 
  
  get '/students/new' do 
    erb :'/students/new' 
  end 
  
  post '/students/new' do 
    @student = Student.create(:name => params[:name], :grade_level => params[:grade_level], :project => params[:project])
    @student.save 
    redirect to "/students/#{@student.id}"
  end 
  
  get '/students/:id' do 
    @student = Student.find_by_id(params[:id]) 
       erb :'/students/show' 
  end 
  
  get '/students/:id/edit' do 
    @student = Student.find_by_id(params[:id]) 
       erb :'/students/show' 
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
    @student.delete 
       redirect to '/students' 
  end 
end       
  