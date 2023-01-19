class KeyskillSerializer < ActiveModel::Serializer
  belongs_to :seeker
  attributes :id, :seeker_id, :skillname,:skilldescription
end
