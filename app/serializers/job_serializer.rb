class JobSerializer < ActiveModel::Serializer
  belongs_to :employer
  belongs_to :category
  has_many :savedjobs
  has_many :jobapplications
  attributes :id,    :jobtitle, :positionsavailable,:experienceinyears,:minsalary,:maximumsalary,:minimumeducationallevel,:senioritylevel,:location,:keyskills,:responsibilities,:dateposted
end
