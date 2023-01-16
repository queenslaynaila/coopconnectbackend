class MySerializer < JobapplicationSerializer
  belongs_to :job
 belongs_to :seeker
  has_one :employer,through: :job
  attributes :id,    :status, :dateapplied,:employer

end
