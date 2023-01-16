class SeekerAppliedSerializer < ActiveModel::Serializer
  attributes :appliedjobs
  def appliedjobs
    
    self.object.jobapplications.map do |element|
     element.job
    end
  end
end
