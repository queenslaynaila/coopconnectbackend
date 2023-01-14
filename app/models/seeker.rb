class Seeker < ApplicationRecord
  has_one :account
  has_many :educations
  has_many :experiences
  has_many :savedjobs
  has_many :savedinternships
  has_many :internships, through: :savedinternships
  has_many :internshipapplications
  has_many :jobapplications
  has_many :jobs ,through: :jobapplications
  has_many :employers , through: :jobapplications
  has_many :jobs ,through: :savedjobs
  has_many :savedcompanies
  has_many :savedprofiles
  has_many :employers, through: :savedcompanies
end
