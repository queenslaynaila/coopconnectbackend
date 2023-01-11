class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :seeker_id, :jobtitle, :description, :startdate, :enddate
end
