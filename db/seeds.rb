# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
 

Savedjob.create(seeker_id:1,job_id:1)

Jobapplication.create(job_id: 1,seeker_id:1,dateapplied:"01-01-2023")

Savedcompany.create(seeker_id:1,employer_id:1)

Savedprofile.create(employer_id:1,seeker_id:1)
