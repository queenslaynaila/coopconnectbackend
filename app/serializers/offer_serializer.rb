class OfferSerializer < ActiveModel::Serializer
  attributes :id, :employer_id, :seeker_id
end
