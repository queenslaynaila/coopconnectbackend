class InternshipSerializer < ActiveModel::Serializer
  belongs_to :employer
  belongs_to :category
  has_many :savedinternships
  attributes :id, :employer_id, :category_id, :positiontitle, :positionsvailable, :salary, :location, :keyskills
end
