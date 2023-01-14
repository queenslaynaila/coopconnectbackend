
 categories = Category.create([
  {name:"Marketing",image:"https://i.ibb.co/TvNLSxY/analytics.png"},
  {name:"Design",image:"https://i.ibb.co/9gZLcf1/browse.png"},
  {name:"CustomerService" ,image:"https://i.ibb.co/FnRPDC9/customer.png"},
  {name:"CareJobbs",image:"https://i.ibb.co/9bzQfKq/care.png"},
  {name:"Analytics",image:"https://i.ibb.co/TvNLSxY/analytics.png"},
  {name:"Medical",image:"https://i.ibb.co/8NGxQBX/undraw-Doctors-p6aq.png"},
  {name:"Teaching",image:"https://i.ibb.co/BB0s5q7/teaching.png"},
  {name:"Sales",image:"https://i.ibb.co/WBsjTQ7/analytics.png"},
  {name:"Internships",image:"https://i.ibb.co/WBsjTQ7/analytics.png"},
  {name:"Remote",image:"https://i.ibb.co/WBsjTQ7/analytics.png"},
  {name:"Secretary",image:"https://i.ibb.co/WBsjTQ7/analytics.png"}])

Employer.create(name:"LencareSoftware",firstname:"Lencer",secondname:"Jill",companytype:"private",websiteurl:"https://dan.com/buy-domain/rennder.com?redirected=true", description:"A software company founded in 200.Providing softwaresolutions for you",designation:"ICT staff")
Employer.create(name:"tessse",firstname:"Lencer",secondname:"Jill",companytype:"private",websiteurl:"https://dan.com/buy-domain/rennder.com?redirected=true", description:"A software company founded in 200.Providing softwaresolutions for you",designation:"ICT staff")

Job.create(employer_id:1,category_id:5,jobtitle:"Junior Developer",positionsavailable:"7",experienceinyears:1,minsalary:30000,maximumsalary:60000,minimumeducationallevel:"Degree",senioritylevel:"Intern",location:"Nairobi",keyskills:"JS,React,React Native,Angular,Node,Teamwork,Goodcommskills",responsibilities:"Write code, Writecodeagain,Eatcode",dateposted:"22-05-2022",overallsummarry:"A junior developer capable of eriting code for us.Main duties are to write code")
Job.create(employer_id:2,category_id:5,jobtitle:"Junior Developer",positionsavailable:"7",experienceinyears:1,minsalary:30000,maximumsalary:60000,minimumeducationallevel:"Degree",senioritylevel:"Intern",location:"Nairobi",keyskills:"JS,React,React Native,Angular,Node,Teamwork,Goodcommskills",responsibilities:"Write code, Writecodeagain,Eatcode",dateposted:"22-05-2022",overallsummarry:"A junior developer capable of eriting code for us.Main duties are to write code")

Seeker.create(firstname:"Queenslay",secondname:"Jema" ,phone:123456789, country:"Kenya",city:"Nairobi",about:"I am a student of Literature , I likes to read novels, plays, poetry, I always spend more time to explore my knowledge")
Keyskill.create(seeker_id:1,skillname:"Teamwork")
Keyskill.create(seeker_id:1,skillname:"Communication skills")
Keyskill.create(seeker_id:1,skillname:"Working Together")
Account.create(seeker_id:1,email:"queenslayjema@gmail.com",password:"queenslay")
puts "done seekers"

puts "done users"
Education.create(seeker_id:1 ,level:"Degree",startdate:"01-01-2018" ,enddate:'01-01-2022',certificatename:"Bachelor of Arts Political Science and Public Admin",institution:"University of Nairobi")
Education.create(seeker_id:1 ,level:"Certificate",startdate:"01-06-2022" ,enddate:'01-02-2023',certificatename:"Certificate in Software Engineering",institution:"MoringaSchool")

puts "doneeducation"
Experience.create(seeker_id:1,jobtitle:"Junior Dev",description:"A junior developer specaialised in both frontend and backend.I have worked with Javascript Reactjs,React Native,Javascripy, Rails, Python,SQL.I am profienct in CSS frameworks like Bootstrap and Sass",startdate:"01-01-2018" ,enddate:"01-01-2018")

puts "doneexperience"
Experience.create(seeker_id:1,jobtitle:"Junior Dev",description:"A junior developer specaialised in both frontend and backend.I have worked with Javascript Reactjs,React Native,Javascripy, Rails, Python,SQL.I am profienct in CSS frameworks like Bootstrap and Sass",startdate:"01-01-2018" ,enddate:"01-01-2018")







puts "doneemployer"



puts "donejobs"

Internship.create(employer_id:1,category_id:9,positiontitle:"Junior Intern",positionsvailable:1,salary:10000,location:"Nairobi",keyskills:"JS,React,React Native,Angular,Node,Teamwork,Goodcommskills")
puts "done insternships"


Account.create(employer_id:1,email:"lencare@gmail",password:"lencare")

Savedjob.create(seeker_id:1,job_id:1)

Jobapplication.create(job_id: 1,seeker_id:1,dateapplied:"01-01-2023")
Jobapplication.create(job_id: 2,seeker_id:1,dateapplied:"01-01-2023")

Savedcompany.create(seeker_id:1,employer_id:1)

Savedprofile.create(employer_id:1,seeker_id:1)
