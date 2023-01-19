# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_17_202706) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer "seeker_id"
    t.integer "employer_id"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.text "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.integer "seeker_id"
    t.text "level"
    t.date "startdate"
    t.date "enddate"
    t.text "certificatename"
    t.text "institution"
    t.date  "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employers", force: :cascade do |t|
    t.text "name"
    t.text "firstname"
    t.text "secondname"
    t.text "companytype"
    t.string "websiteurl"
    t.text "description"
    t.text "designation"
<<<<<<< HEAD
    t.text "user_type", default: "Jobseeker"
=======
    t.text "location"
    t.date "foundedin"
    t.text "user_type", default: "Employer"
>>>>>>> a2abdc70159ae75f2cfbe2ffa94f5d0d4e62ab77
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.integer "seeker_id"
    t.text "jobtitle"
    t.text "description"
    t.date "startdate"
    t.date "enddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "internshipapplications", force: :cascade do |t|
    t.integer "internship_id"
    t.integer "seeker_id"
    t.text "status", default: "Applied"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "internships", force: :cascade do |t|
    t.integer "employer_id"
    t.integer "category_id"
    t.text "positiontitle"
    t.integer "positionsvailable"
    t.string "salary"
    t.text "location"
    t.text "keyskills"
    t.text "jobsummary"
    t.text "responsibilities"
    t.text "interviewprocess"
    t.text "apply"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobapplications", force: :cascade do |t|
    t.integer "job_id"
    t.integer "seeker_id"
<<<<<<< HEAD
    t.date "dateapplied"
=======
    t.text "status", default: "Applied"
>>>>>>> a2abdc70159ae75f2cfbe2ffa94f5d0d4e62ab77
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "employer_id"
    t.integer "category_id"
    t.text "jobtitle"
    t.integer "positionsavailable"
    t.integer "experienceinyears"
    t.integer "minsalary"
    t.integer "maximumsalary"
    t.text "minimumeducationallevel"
    t.text "senioritylevel"
    t.text "location"
    t.text "keyskills"
    t.text "responsibilities"
    t.text "overallsummarry"
    t.date "dateposted"
    t.text "interviewprocess"
    t.text "apply"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keyskills", force: :cascade do |t|
    t.integer "seeker_id"
    t.text "skillname"
    t.text "skilldescription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.integer "seeker_id"
    t.text "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer "employer_id"
    t.integer "seeker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "savedcompanies", force: :cascade do |t|
    t.integer "seeker_id"
    t.integer "employer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "savedinternships", force: :cascade do |t|
    t.integer "seeker_id"
    t.integer "internship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "savedjobs", force: :cascade do |t|
    t.integer "seeker_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "savedprofiles", force: :cascade do |t|
    t.integer "employer_id"
    t.integer "seeker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seekers", force: :cascade do |t|
    t.text "firstname"
    t.text "secondname"
    t.integer "phone"
    t.text "country"
    t.text "city"
    t.text "about"
    t.text "usertype", default: "Jobseeker"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "socialprofiles", force: :cascade do |t|
    t.integer "seeker_id"
    t.text "platform"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
