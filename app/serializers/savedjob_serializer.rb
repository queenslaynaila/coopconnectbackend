class SavedjobSerializer < ActiveModel::Serializer
  belongs_to :seeker
  belongs_to :jobs
  attributes :id, :seeker_id, :job_id
end
