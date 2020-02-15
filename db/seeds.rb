

Mrs.Elaine Jones = User.create(name:"Mrs. Elaine Jones", email:"ejones@scs.org", password:"glitter123") 
John Canon = Student.new(name:"John Canon", grade_level:"9th", project:"Gravity")
John Canon.user = Mrs.ElaineJones 
John Canon.save 

Sarah Johnson = Student.new(name:"Sarah Johnson", grade_level:"9th", project:"How a camera works")
Sarah Johnson.user = Mrs.ElaineJones 
Sarah Johnson.save 

Mike Gustof = Student.new(name:"Mike Gustof", grade_level:"9th", project:"Precipitation")
Mike Gustof.user = Mrs.ElaineJones 
Mike Gustof.save 

Mr.Micheal Fox = User.new(name:"Mr. Micheal Fox", email:"mfox@scs.org", password:"50yardline") 
Felicia Saxton = Student.new(name:"Felicia Saxton", grade_level:"11th", project:"Light speed")
Felicia Saxtion.user = Mr.MichaelFox 
Felicia Saxtion.save 

Brad Spear = Student.new(name:"Brad Spear", grade_level:"11th", project:"Making soap")
Brad Spear.user = Mr.MichaelFox 
Brad Spear.save 

Heather Spots = Student.new(name:"Heather Spots", grade_level:"11th", project:"Volcanoes")
Heather Spots.user = Mr.MichaelFox 
Heather Spots.save 

Mrs. Sweet = User.new(name:"Mrs. Sweet", email:"ssweet@scs.org", password:"nora9812") 
Audrey Biddle = Student.new(name:"Audrey Biddle", grade_level:"10th", project:"Making butter")
Audrey Biddle.user = Mrs.Sweet 
Audrey Biddle.save 

Eric Vonder = Student.new(name:"Eric Vonder", grade_level:"10th", project:"Combustion")
Eric Vonder.user = Mrs.Sweet 
Eric Vonder.save 

Shelly Fickle = Student.new(name:"Shelly Flickle", grade_level:"10th", project:"Photosynthesis")
Shelly Fickle.user = Mrs.Sweet 
Shelly Fickle.save 

Mr. Phil Collins = User.new(name:"Mr. Phil Collins", email:"pcollins@scs.org", password:"yellowsub5678")
Eloise Bump = Student.new(name:"Eloise Bump", grade_level:"12th", project:"Glass making")
Eloise Bump.user = Mr.PhilCollins 
Eloise Bump.save 

Henry Dalinger = Student.new(name:"Henry Dalinger", grade_level:"12th", project:"Motors")
Henry Dalinger.user = Mr.PhilCollins 
Henry Dalinger.save 

Melvin Hill = Student.new(name:"Melvin Hill", grade_level:"12th", project:"Pulleys")
Melvin Hill.user = Mr.PhilCollins 
Melvin Hill.save 



