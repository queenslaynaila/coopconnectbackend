class JobapplicationSerializer < ActiveModel::Serializer
  belongs_to :job
  belongs_to :seeker
 
  attributes :id, :job_id, :seeker_id, :dateapplied
end
