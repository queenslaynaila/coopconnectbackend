class SavedjobSerializer < ActiveModel::Serializer

  belongs_to :job
  attributes :id 
end
