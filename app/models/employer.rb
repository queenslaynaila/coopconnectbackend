class Employer < ApplicationRecord

  has_one :account
  has_many :jobs
  has_many :internships
  has_many :categories, through: :jobs
  has_many :categories, through: :internships
  has_many :savedprofiles
  has_many :seekers , through: :savedprofiles
  
end
