class EmployerSerializer < ActiveModel::Serializer
  has_many :jobs
  has_many :internships
  has_one :account
  has_many :savedprofiles
  

  attributes :id, :name, :firstname, :secondname, :companytype, :websiteurl, :description, :designation, :user_type

end
