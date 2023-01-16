class Internshipapplication < ApplicationRecord
  belongs_to :internship
  belongs_to :seeker
  has_one :employer,through: :internship
end
