class InternshipSerializer < ActiveModel::Serializer
  belongs_to :employer
  belongs_to :category
  has_many :savedinternships
  attributes :id, :employer_id,:totalapplications, :category_id, :positiontitle, :positionsvailable,:saved, :salary, :location, :keyskills,:responsibilities,:jobsummary,:responsibilities,:interviewprocess,:apply, :totalapplications

  def totalapplications
    self.object.internshipapplications.count
  end

  def saved
    self.object.savedinternships.count
  end
end
