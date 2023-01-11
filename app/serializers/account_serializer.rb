class AccountSerializer < ActiveModel::Serializer
  attributes :id, :seeker_id,:employer_id,  :email, :password_digest
end
