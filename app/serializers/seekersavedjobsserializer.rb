class SeekersavedjobsSerializer < ActiveModel::Serializer
  attributes :appliedjobs

  def appliedjobs

    seeker.jobapplications.map do |element|
     element.job
    end

  end

end
