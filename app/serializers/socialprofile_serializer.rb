class SocialprofileSerializer < ActiveModel::Serializer
  attributes   :platform, :link
  belongs_to :seeker
end
