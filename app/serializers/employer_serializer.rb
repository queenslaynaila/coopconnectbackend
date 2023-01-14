class EmployerSerializer < ActiveModel::Serializer
  has_many :jobs
  has_many :internships
  has_one :account
  has_many :savedprofiles
  has_many :jobapplications, through: :jobs
  has_many :seekers,through: :jobapplications

  attributes :id, :name, :firstname, :secondname, :companytype, :websiteurl, :description, :designation, :user_type,:totaljobsposted,:totalinternshipsposted,:totaljobapplications,
  def totaljobsposted
    self.object.jobs.count
  end
  def totalinternshipsposted
    self.object.internships.count
  end
  def totaljobapplications
    self.object.jobapplications.count
  end

end
