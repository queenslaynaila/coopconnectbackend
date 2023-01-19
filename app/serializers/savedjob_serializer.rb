class SavedjobSerializer < ActiveModel::Serializer

  belongs_to :job
  attributes :id ,:seeker_id,:job_id
end
