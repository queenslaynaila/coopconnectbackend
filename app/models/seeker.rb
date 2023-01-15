class Seeker < ApplicationRecord
  has_many :keyskills
  has_one :account
  has_many :educations
  has_many :experiences
  has_many :savedjobs
  has_many :jobs ,through: :savedjobs
  has_many :savedinternships
  has_many :internshipapplications
  has_many :internships , through: :internshipapplications
  has_many :jobapplications

  has_many :employers , through: :jobapplications

  has_many :savedcompanies
  has_many :socialprofiles
  has_many :savedprofiles

end
