
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

Employer.create(name:"LencareSoftware",firstname:"Lencer",secondname:"Jill",companytype:"private",websiteurl:"https://dan.com/buy-domain/rennder.com?redirected=true", description:"A software company founded in 200.Providing softwaresolutions for you",designation:"ICT staff",location:"Naiobi")
Employer.create(name:"Tessse",firstname:"Tesse",secondname:"Develo",companytype:"private",websiteurl:"https://dan.com/buy-domain/rennder.com?redirected=true", description:"A software company founded in 200.Providing softwaresolutions for you",designation:"ICT staff",location:"Nairobi")
Account.create(employer_id:1,email:"lencare@gmail",password:"Jema@naila2000")




Seeker.create(firstname:"Queenslay",secondname:"Jema" ,phone:123456789, country:"Kenya",city:"Nairobi",about:"I am a student of Literature , I likes to read novels, plays, poetry, I always spend more time to explore my knowledge",profession:"Software Enginner",yearsinprofesion:1,gender:"female",yearofbirth:"22-05-2000")
Seeker.create(firstname:"Queenslay",secondname:"Jema" ,phone:123456789, country:"Kenya",city:"Nairobi",about:"I am a student of Literature , I likes to read novels, plays, poetry, I always spend more time to explore my knowledge",profession:"Chef",yearsinprofesion:7,gender:"male",yearofbirth:"22-05-2000")
Account.create(seeker_id:1,email:"queenslayjema@gmail.com",password:"Jema@naila2000")
Account.create(seeker_id:2,email:"jemanailA@gmail.com",password:"Jema@naila2000")


Job.create(employer_id:1,category_id:5,jobtitle:"Junior Developer",positionsavailable:"7",experienceinyears:1,minsalary:30000,maximumsalary:60000,minimumeducationallevel:"Degree",senioritylevel:"Intern",location:"Nairobi",keyskills:"JS,React,React Native,Angular,Node,Teamwork,Goodcommskills",responsibilities:"Primary responsibilities include designing and implementing Java applications, developing and testing software, and resolving technical issues that arise.",dateposted:"22-05-2022",overallsummarry:"Design and write embedded software code according to the desired specifications. Test the software for scalability. Implement/ Optimize embedded systems. Interpret and document test/ error reports. Fix bugs.", interviewprocess:"Written and technical" ,apply:"inapp or email cv to me@gmail.com")

Job.create(employer_id:1,category_id:5,jobtitle:" Developer",positionsavailable:"7",experienceinyears:1,minsalary:30000,maximumsalary:60000,minimumeducationallevel:"Degree",senioritylevel:"Intern",location:"Nairobi",keyskills:"JS,React,React Native,Angular,Node,Teamwork,Goodcommskills",responsibilities:"Primary responsibilities include designing and implementing Java applications, developing and testing software, and resolving technical issues that arise.",dateposted:"22-05-2022",overallsummarry:"Design and write embedded software code according to the desired specifications. Test the software for scalability. Implement/ Optimize embedded systems. Interpret and document test/ error reports. Fix bugs." ,interviewprocess:"Written and technical", apply:"inapp or email cv to me@gmail.com")
Job.create(employer_id:1,category_id:5,jobtitle:" Developer",positionsavailable:"7",experienceinyears:1,minsalary:30000,maximumsalary:60000,minimumeducationallevel:"Degree",senioritylevel:"Intern",location:"Nairobi",keyskills:"JS,React,React Native,Angular,Node,Teamwork,Goodcommskills",responsibilities:"Primary responsibilities include designing and implementing Java applications, developing and testing software, and resolving technical issues that arise.",dateposted:"22-05-2022",overallsummarry:"Design and write embedded software code according to the desired specifications. Test the software for scalability. Implement/ Optimize embedded systems. Interpret and document test/ error reports. Fix bugs." ,interviewprocess:"Written and technical", apply:"inapp or email cv to me@gmail.com")


Job.create(employer_id:2,category_id:5,jobtitle:"SeniorDeveloper",positionsavailable:"7",experienceinyears:1,minsalary:30000,maximumsalary:60000,minimumeducationallevel:"Degree",senioritylevel:"Intern",location:"Nairobi",keyskills:"JS,React,React Native,Angular,Node,Teamwork,Goodcommskills",responsibilities:"Write code, Writecodeagain,Eatcode",dateposted:"22-05-2022",overallsummarry:"A junior developer capable of eriting code for us.Main duties are to write code")


Keyskill.create(seeker_id:1,skillname:"Teamwork",skilldescription:"Known for excellence")
Keyskill.create(seeker_id:1,skillname:"Communication skills",skilldescription:"Known for excellence")
Keyskill.create(seeker_id:2,skillname:"Working Together",skilldescription:"Known for excellence")

puts "done seekers"

Socialprofile.create(seeker_id:1,platform:"Github",link:"https://github.com/queenslaynaila?tab=repositories")
Socialprofile.create(seeker_id:1,platform:"Facebook",link:"https://github.com/queenslaynaila?tab=repositories")
Socialprofile.create(seeker_id:1,platform:"Instagram",link:"https://github.com/queenslaynaila?tab=repositories")

puts "done users"
Education.create(seeker_id:1 ,level:"Degree",startdate:"01-01-2018" ,enddate:'01-01-2022',certificatename:"Bachelor of Arts Political Science and Public Admin",institution:"University of Nairobi")
Education.create(seeker_id:1 ,level:"Certificate",startdate:"01-06-2022" ,enddate:'01-02-2023',certificatename:"Certificate in Software Engineering",institution:"MoringaSchool")

puts "doneeducation"
Experience.create(seeker_id:1,jobtitle:"Junior Dev",description:"A junior developer specaialised in both frontend and backend.I have worked with Javascript Reactjs,React Native,Javascripy, Rails, Python,SQL.I am profienct in CSS frameworks like Bootstrap and Sass",startdate:"01-01-2018" ,enddate:"01-01-2018")

puts "doneexperience"
Experience.create(seeker_id:1,jobtitle:"Junior Dev",description:"A junior developer specaialised in both frontend and backend.I have worked with Javascript Reactjs,React Native,Javascripy, Rails, Python,SQL.I am profienct in CSS frameworks like Bootstrap and Sass",startdate:"01-01-2018" ,enddate:"01-01-2018")







puts "doneemployer"



puts "donejobs"

Internship.create(employer_id:1,category_id:9,positiontitle:"Junior Intern",positionsvailable:1,salary:"As per the industry standards",location:"Nairobi",keyskills:"Any Degree, CoreJava ,Excellent programming",jobsummary:" Techvolt software Pvt. Ltd a software development and digital Marketing company. Techvolt software involved in the business entry of ERB, CRM, Applicants web designing, web hosting, web applications development, Android App development, software testing along with embedded system and IOT applications development.",responsibilities:"Publish jobs on various job portals.,Screening and shortlisting the   resumes.,Scheduling of interview and communicating with the candidates for joining.,Coordinating with HR team.",interviewprocess:"Writing Test and Face to face.",apply:"Interested candidates can send your resume to queen@gmail.com")

Internship.create(employer_id:2,category_id:5,positiontitle:"Junior Developer",positionsvailable:1,salary:"As per the industry standards",location:"Kisumu",keyskills:"Knowledge in React.,Knowledge in Coding.,Good communication.",jobsummary:" Techvolt software Pvt. Ltd a software development and digital Marketing company. Techvolt software involved in the business entry of ERB, CRM, Applicants web designing, web hosting, web applications development, Android App development, software testing along with embedded system and IOT applications development.",responsibilities:"Primary responsibilities include designing and implementing Java applications, developing and testing software, and resolving technical issues that arise.",apply:"Interested candidates can send your resume to queen@gmail.com")
Internship.create(employer_id:1,category_id:5,positiontitle:"Junior Developer",positionsvailable:1,salary:"As per the industry standards",location:"Kisumu",keyskills:"Knowledge in React.,Knowledge in Coding.,Good communication.",jobsummary:" Techvolt software Pvt. Ltd a software development and digital Marketing company. Techvolt software involved in the business entry of ERB, CRM, Applicants web designing, web hosting, web applications development, Android App development, software testing along with embedded system and IOT applications development.",responsibilities:"Primary responsibilities include designing and implementing Java applications, developing and testing software, and resolving technical issues that arise.",apply:"Interested candidates can send your resume to queen@gmail.com")
Internship.create(employer_id:2,category_id:9,positiontitle:"Junior Intern",positionsvailable:1,salary:"As per the industry standards",location:"Nairobi",keyskills:"Any Degree, CoreJava ,Excellent programming",jobsummary:" Techvolt software Pvt. Ltd a software development and digital Marketing company. Techvolt software involved in the business entry of ERB, CRM, Applicants web designing, web hosting, web applications development, Android App development, software testing along with embedded system and IOT applications development.",responsibilities:"Publish jobs on various job portals.,Screening and shortlisting the   resumes.,Scheduling of interview and communicating with the candidates for joining.,Coordinating with HR team.",interviewprocess:"Writing Test and Face to face.",apply:"Interested candidates can send your resume to queen@gmail.com")



puts "done insternships"




Savedjob.create(seeker_id:1,job_id:1)

Jobapplication.create(job_id: 1,seeker_id:1 )
Jobapplication.create(job_id: 2,seeker_id:1)

Savedcompany.create(seeker_id:1,employer_id:1)

Savedprofile.create(employer_id:1,seeker_id:1)
Savedinternship.create(seeker_id:1,internship_id:1)
Internshipapplication.create(seeker_id:1,internship_id:1)
