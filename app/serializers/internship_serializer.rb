class InternshipSerializer < ActiveModel::Serializer
  belongs_to :employer
  belongs_to :category
  has_many :savedinternships
  attributes :id, :employer_id, :category_id, :positiontitle, :positionsvailable,:saved, :salary, :location, :keyskills

  def saved
    self.object.savedinternships.count
  end
end
