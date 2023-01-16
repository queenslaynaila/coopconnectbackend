class JobSerializer < ActiveModel::Serializer
  belongs_to :employer
  belongs_to :category


  attributes :id,    :jobtitle, :positionsavailable,:experienceinyears,:minsalary,:maximumsalary,:minimumeducationallevel,:senioritylevel,:location,:keyskills,:responsibilities,:dateposted,:overallsummarry,:employer


end
