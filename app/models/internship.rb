class Internship < ApplicationRecord
  belongs_to :employer
  belongs_to :category
  has_many :savedinternships
  has_many  :seekers,through: :savedinternships
  has_many :internshipapplications


end
