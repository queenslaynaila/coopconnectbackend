class SeekerSerializer < ActiveModel::Serializer
  has_one :account
  has_many :educations
  has_many :experiences
  has_many :savedjobs
  has_many :jobs ,through: :savedjobs
  has_many :savedcompanies
  has_many :employers, through: :savedcompanies
  has_many :jobapplications

  attributes :id,  :firstname, :secondname, :phone, :country, :city, :about ,:usertype
end
