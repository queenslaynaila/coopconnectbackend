class Job < ApplicationRecord
  belongs_to :employer
  belongs_to :category
  has_many :savedjobs
  has_many :seekers , through: :savedjobs
  has_many :jobapplications
  validates :minimumeducationallevel, inclusion: { in: %w(PHD Masters Degree Diploma Certificate), message: "%{value} can only be PHD,Masters,Degree,Diploma,Certificate" }
  validates :senioritylevel,inclusion: { in: %w(Intern Junior Senior)}
   
end
