class EducationSerializer < ActiveModel::Serializer
  attributes :id, :seeker_id, :level, :startdate, :enddate, :certificatename, :institution ,:seeker
  belongs_to :seeker
end
