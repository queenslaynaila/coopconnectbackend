class Job < ApplicationRecord
  belongs_to :employer
  belongs_to :category,optional: true
  has_many :savedjobs
  has_many :seekers , through: :savedjobs
  has_many :jobapplications


end
