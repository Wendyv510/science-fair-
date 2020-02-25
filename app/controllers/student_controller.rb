require './config/environment'

class StudentController < ApplicationController

  
  get '/students' do 
    @students = Student.all
      erb :'/students/index' 
  end 
  
  post '/students' do 
    redirect to '/students' 
  end 
  
  get '/students/new' do 
    redirect_if_not_logged_in
    erb :'/students/new' 
  end 
  
  post '/students/new' do
    redirect_if_not_logged_in
    if params[:name]=="" || params[:grade_level]=="" || params[:project]=="" 
       redirect to '/students/new' 
    else 
   @student = Student.find_or_create_by(:name => params[:name], :grade_level => params[:grade_level], :project => params[:project])
   @student.user = User.current_user(session) 
   @student.save 
       redirect to "/students/#{@student.id}"
    end 
  end 
  
  
  get '/students/:id' do 
    @student = Student.find_by_id(params[:id]) 
       erb :'/students/show' 
  end 
  
  patch '/students/:id' do 
    @student = Student.find_by_id(params[:id])
   if @student.user == User.current_user(session) 
      @student.name = params[:name] 
      @student.grade_level = params[:grade_level] 
      @student.project = params[:project] 
      @student.save 
       redirect to "/students/#{@student.id}"
   else 
       redirect to "/students"
   end 
  end 
  
  delete '/students/:id' do 
    @student == Student.find_by_id(params[:id]) 
    if @student.user = User.current_user(session) 
       @student.delete  
       redirect to '/students' 
    end 
  end 
  
  helpers do 
   def redirect_if_not_logged_in 
     if !User.is_logged_in?(session)
       redirect to "/signin"
     end 
   end 
  end 
end       
  