class InternshipapplicationSerializer < ActiveModel::Serializer
  attributes :id,  :internship,:employer, :status ,:created_at
  belongs_to :internship
  has_one :employer,through: :internship
end
