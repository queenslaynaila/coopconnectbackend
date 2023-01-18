class JobapplicationSerializer < ActiveModel::Serializer
  belongs_to :job
 belongs_to :seeker
  has_one :employer,through: :job
  attributes :id,    :status ,:employer,:created_at

end
