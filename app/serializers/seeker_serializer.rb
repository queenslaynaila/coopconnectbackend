class SeekerSerializer < ActiveModel::Serializer
  has_many :keyskills
  has_one :account
  has_many :educations
  has_many :experiences
  has_many :savedjobs

  has_many :savedcompanies

  has_many :jobapplications
  has_many :employers,through: :jobapplications
  has_many :savedinternships
  has_many :internshipapplications


  attributes :id,  :firstname, :secondname, :phone, :country, :city, :about ,:usertype  ,:totaljobsapplied,:totalcompaniesapplied,:totalinternshipsapplied ,:totalsavedinternships,:totalsavedcompanies ,:totalsavedjobs,:keyskills,:educations,:experiences,:jobapplications,:internshipapplications,:savedjobs,:savedinternships,:savedcompanies,:account,:created_at ,

  def totalsavedjobs
    self.object.savedjobs.count
  end
  def totalsavedcompanies
    self.object.savedcompanies.count
  end
  def totaljobsapplied
    self.object.jobapplications.count
  end
  def totalsavedinternships
    self.object.savedinternships.count
  end
  def totalinternshipsapplied
    self.object.internshipapplications.count
  end
  def totalcompaniesapplied
    self.object.jobapplications.count
  end

end
