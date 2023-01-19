class Seeker < ApplicationRecord

  validates :firstname, presence: true
  validates :secondname,presence: true
  validates :gender , presence: true
  validates :yearofbirth, presence: true
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
  has_many :offers
  has_many :employers, through:  :offers
  has_many :employers , through: :jobapplications

  has_many :savedcompanies
  has_many :socialprofiles
  has_many :savedprofiles

end
