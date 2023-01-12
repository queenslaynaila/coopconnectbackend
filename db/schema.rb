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

ActiveRecord::Schema[7.0].define(version: 2023_01_11_163347) do
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
    t.datetime "created_at", null: false
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
    t.text "user_type", default: "Jobseeker"
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

  create_table "internships", force: :cascade do |t|
    t.integer "employer_id"
    t.integer "category_id"
    t.text "positiontitle"
    t.integer "positionsvailable"
    t.integer "salary"
    t.text "location"
    t.text "keyskills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobapplications", force: :cascade do |t|
    t.integer "job_id"
    t.integer "seeker_id"
    t.date "dateapplied"
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
    t.date "dateposted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "savedcompanies", force: :cascade do |t|
    t.integer "seeker_id"
    t.integer "employer_id"
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

end
