class SeekerSerializer < ActiveModel::Serializer

  has_many :educations
  has_many :experiences










  attributes :id,  :firstname, :secondname,:email,:phone, :country, :city, :about,:profession,:yearsinprofesion ,:usertype  ,:totaljobsapplied,:totalcompaniesapplied,:totalinternshipsapplied ,:totalsavedinternships,:totalsavedcompanies ,:totalsavedjobs,:keyskills,:educations,:experiences ,:account,:appliedjobs, :mysavedjobs ,:mysavedinternships,:myappliedinternships,:mysavedcompanies,:appliedcompanies,:created_at,:mediaprofiles

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
  def appliedcompanies
    self.object.jobapplications.map do |element|
      element.employer
     end
  end

  def totalcompaniesapplied
   me =  self.object.jobapplications.map do |element|
      element.employer
     end
     me.count
  end

  def appliedjobs
    self.object.jobapplications.map do |element|
     element.job
    end
  end

  def mysavedjobs
    self.object.savedjobs.map do |element|
      element.job
     end
  end
  def myappliedinternships
    self.object.internshipapplications.map do |element|
      element.internships
     end
  end
  def mysavedcompanies
    self.object.savedcompanies.map do |element|
      element.employer
     end
  end
  def keyskills
    self.object.keyskills.map do |element|
      element.skillname
     end
  end
  def mediaprofiles
    self.object.socialprofiles.each_with_index do |(key, value), index|
      puts "  #{key} => #{value}"
     end
  end
  def mysavedinternships
    self.object.savedinternships.map do |element|
      element.internships
     end
  end
  def email
    self.object.account.email
  end

end
