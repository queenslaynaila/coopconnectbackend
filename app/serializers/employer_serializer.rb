class EmployerSerializer < ActiveModel::Serializer
  has_many :jobs

  attributes   :id, :name, :firstname, :secondname, :companytype, :websiteurl, :description, :designation , :user_type,:savedpostedjobs ,:totaljobsposted,:totalinternshipsposted,:totaljobapplications ,:location,:account,:created_at ,:internships ,:categories,:jobapplications
  def totaljobsposted
    self.object.jobs.count
  end
  def totalinternshipsposted
    self.object.internships.count
  end
  def totaljobapplications
    self.object.jobapplications.count
  end

  def email
    self.object.account.email
  end

  def savedpostedjobs
    self.object.savedjobs.count
  end
  def categories
    self.object.jobs
  end
  
end
