class SavedinternshipSerializer < ActiveModel::Serializer
  attributes :id, :seeker_id, :internship_id
  belongs_to :seeker
  belongs_to :internship
end
