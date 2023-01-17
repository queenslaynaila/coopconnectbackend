class EmployerSerializer < ActiveModel::Serializer

  attributes   :id, :name, :firstname, :secondname, :companytype, :websiteurl, :description, :designation , :user_type,:savedpostedjobs ,:totaljobsposted,:totalinternshipsposted,:totaljobapplications,:jobs,:account,:created_at
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

end
