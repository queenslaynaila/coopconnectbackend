class JobapplicationSerializer < ActiveModel::Serializer
  belongs_to :job

  has_one :employer,through: :job
  attributes :id,    :status, :dateapplied,:employer

end
