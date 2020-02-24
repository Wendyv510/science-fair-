class User < ActiveRecord::Base 
  has_secure_password 
  
  has_many :students 
  
  def self.current_user(session) 
    @user ||= User.find_by_id(session[:user_id].to_i)
  end 
  
  def self.is_logged_in?(session) 
    !!User.find_by_id(session[:user_id])
  end 
  
end 