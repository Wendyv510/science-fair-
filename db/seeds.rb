require_relative './app/models/student'
require_relative './app/models/user' 

User.new{name:"Mrs. Elaine Jones", email:"ejones@scs.org", password:"glitter123", password_confirmation:"glitter123"} 
Student.new{name:"John Canon", grade_level:"9th", project:"Gravity"} 
Student.new{name:"Sarah Johnson", grade_level:"9th", project:"How a camera works"}
Student.new{name:"Mike Gustof", grade_level:"9th", project:"Precipitation"} 

User.new{name:"Mr. Micheal Fox", email:"mfox@scs.org", password:"50yardline", password_confirmation:"50yardline"} 
Student.new{name:"Felicia Saxton", grade_level:"11th", project:"Light speed"} 
Student.new{name:"Brad Spear", grade_level:"11th", project:"Making soap"} 
Student.new{name:"Heather Spots", grade_level:"11th", project:"Volcanoes"} 

User.new{name:"Mrs. Sweet", email:"ssweet@scs.org", password:"nora9812", password_confirmation:"nora9812"} 
Student.new{name:"Audrey Biddle", grade_level:"10th", project:"Making butter"} 
Student.new{name:"Eric Vonder", grade_level:"10th", project:"Combustion"} 
Student.new{name:"Shelly Flickle", grade_level:"10th", project:"Photosynthesis"}

User.new{name:"Mr. Phil Collins", email:"pcollins@scs.org", password:"yellowsub5678", password_confirmation:"yellowsub5678"}
Student.new{name:"Eloise Bump", grade_level:"12th", project:"Glass making"}
Student.new{name:"Henry Dalinger", grade_level:"12th", project:"Motors"}
Student.new{name:"Melvin Hill", grade_level:"12th", project:"Pulleys"} 


User.save 
Student.save 