class CategorySerializer < ActiveModel::Serializer
  has_many :jobs
 
  has_many :internships

  attributes :id, :name ,:image
end
