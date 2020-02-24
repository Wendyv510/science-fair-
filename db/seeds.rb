

Mrs_Elaine_Jones = User.create(name:"Mrs. Elaine Jones", email:"ejones@scs.org", password:"glitter123") 
John_Canon = Student.new(name:"John Canon", grade_level:"9th", project:"Gravity")
John_Canon.user_id = Mrs_Elaine_Jones.id 
John_Canon.save 


Sarah_Johnson = Student.new(name:"Sarah Johnson", grade_level:"9th", project:"How a camera works")
Sarah_Johnson.user = Mrs_Elaine_Jones 
Sarah_Johnson.save 

Mike_Gustof = Student.new(name:"Mike Gustof", grade_level:"9th", project:"Precipitation")
Mike_Gustof.user = Mrs_Elaine_Jones 
Mike_Gustof.save 

Mr_Michael_Fox = User.new(name:"Mr. Michael Fox", email:"mfox@scs.org", password:"50yardline") 
Felicia_Saxton = Student.new(name:"Felicia Saxton", grade_level:"11th", project:"Light speed")
Felicia_Saxton.user = Mr_Michael_Fox 
Felicia_Saxton.save 

Brad_Spear = Student.new(name:"Brad Spear", grade_level:"11th", project:"Making soap")
Brad_Spear.user = Mr_Michael_Fox 
Brad_Spear.save 

Heather_Spots = Student.new(name:"Heather Spots", grade_level:"11th", project:"Volcanoes")
Heather_Spots.user = Mr_Michael_Fox 
Heather_Spots.save 

Mrs_Sweet = User.new(name:"Mrs. Sweet", email:"ssweet@scs.org", password:"nora9812") 
Audrey_Biddle = Student.new(name:"Audrey Biddle", grade_level:"10th", project:"Making butter")
Audrey_Biddle.user = Mrs_Sweet 
Audrey_Biddle.save 

Eric_Vonder = Student.new(name:"Eric Vonder", grade_level:"10th", project:"Combustion")
Eric_Vonder.user = Mrs_Sweet 
Eric_Vonder.save 

Shelly_Fickle = Student.new(name:"Shelly Flickle", grade_level:"10th", project:"Photosynthesis")
Shelly_Fickle.user = Mrs_Sweet 
Shelly_Fickle.save 

Mr_Phil_Collins = User.new(name:"Mr. Phil Collins", email:"pcollins@scs.org", password:"yellowsub5678")
Eloise_Bump = Student.new(name:"Eloise Bump", grade_level:"12th", project:"Glass making")
Eloise_Bump.user = Mr_Phil_Collins 
Eloise_Bump.save 

Henry_Dalinger = Student.new(name:"Henry Dalinger", grade_level:"12th", project:"Motors")
Henry_Dalinger.user = Mr_Phil_Collins 
Henry_Dalinger.save 

Melvin_Hill = Student.new(name:"Melvin Hill", grade_level:"12th", project:"Pulleys")
Melvin_Hill.user = Mr_Phil_Collins 
Melvin_Hill.save 



