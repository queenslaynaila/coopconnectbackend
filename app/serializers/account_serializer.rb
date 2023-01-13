class AccountSerializer < ActiveModel::Serializer
  belongs_to :seeker ,optional: true
  belongs_to :employer, optional: true

  attributes :id, :seeker_id,:employer_id,  :email 
end
