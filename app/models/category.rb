class Category < ApplicationRecord
  has_many :jobs
  has_many :employers,through: :jobs
  has_many :internships
  has_many :employers,through: :internships
end
