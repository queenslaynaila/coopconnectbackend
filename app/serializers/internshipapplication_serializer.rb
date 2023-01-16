class InternshipapplicationSerializer < ActiveModel::Serializer
  attributes :id,  :internship,:employer, :dateapplied
  belongs_to :internship
  has_one :employer,through: :internship
end
