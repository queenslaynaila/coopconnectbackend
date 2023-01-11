class SavedcompanySerializer < ActiveModel::Serializer
  belongs_to :seeker
  belongs_to :employer
  attributes :id, :seeker_id, :employer_id
end
