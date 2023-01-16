class SeekerSerializer < ActiveModel::Serializer

  attributes :id,  :firstname, :secondname,:email,:gender,:yearofbirth,:phone, :country, :city, :about,:profession,:yearsinprofesion ,:usertype  ,:totalsavedjobs,:totalsavedcompanies,:totaljobsapplied,:totalsavedinternships,:totalinternshipsapplied,:totalcompaniesapplied

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
    me =  self.object.jobapplications.map do |element|
       element.employer
      end
      me.count
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

  def email
    self.object.account.email
  end

end
