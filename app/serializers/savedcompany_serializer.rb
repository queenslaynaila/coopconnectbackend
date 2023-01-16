class SavedcompanySerializer < ActiveModel::Serializer

  belongs_to :employer
  attributes :id , :employer_id
end
