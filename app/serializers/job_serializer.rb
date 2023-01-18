class JobSerializer < ActiveModel::Serializer
  belongs_to :employer
  belongs_to :category


  attributes :id, :jobtitle, :positionsavailable,:experienceinyears,:minsalary,:maximumsalary,:minimumeducationallevel,:senioritylevel,:location,:keyskills,:responsibilities,:totalapplications,:totalsaved,:dateposted,:overallsummarry,:employer,:category,
  def totalapplications
    self.object.jobapplications.count
  end
  def totalsaved
    self.object.savedjobs.count
  end
end
