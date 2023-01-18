class Employer < ApplicationRecord
  validates :name, presence: true
  validates :firstname, presence: true
  validates :secondname,presence: true
  has_one :account
  has_many :jobs
  has_many :savedjobs, through: :jobs
  has_many :internships
  has_many :internshipapplications, through: :internships
  has_many :categories, through: :jobs
  has_many :categories, through: :internships
  has_many :savedprofiles
  has_many :seekers , through: :savedprofiles
  has_many :jobapplications, through: :jobs
  has_many :seekers,through: :jobapplications
  has_many :seekers,through: :jobapplications
  has_many :offers
  has_many :seekers, through: :offers
end
