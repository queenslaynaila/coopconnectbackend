class SavedprofileSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :seeker
end
