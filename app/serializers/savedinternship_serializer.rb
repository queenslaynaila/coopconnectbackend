class SavedinternshipSerializer < ActiveModel::Serializer
  attributes :id, :internship_id ,:employer

  belongs_to :internship
  
end
