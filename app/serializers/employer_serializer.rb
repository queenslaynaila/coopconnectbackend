class EmployerSerializer < ActiveModel::Serializer
  has_many :jobs
  has_many :jobapplications, through: :jobs

  attributes :created_at, :id, :name, :firstname, :secondname, :companytype, :websiteurl, :description, :designation, :user_type,:totaljobsposted,:totalinternshipsposted,:totaljobapplications,:seekerprofilessaved ,:allapplicants,:allinternshipapplicants,:jobs,:internships,:allinternshipapplicants
  def totaljobsposted
    self.object.jobs.count
  end
  def totalinternshipsposted
    self.object.internships.count
  end
  def totaljobapplications
    self.object.jobapplications.count
  end
  def seekerprofilessaved
    self.object.savedprofiles.map do |element|
      element.seeker
     end
  end
  def allapplicants
    self.object.jobapplications.map do |element|
      element.seeker
     end
  end
  def allinternshipapplicants
    self.object.internships.map do |element|
      element.internshipapplications

     end
  end
  
end
