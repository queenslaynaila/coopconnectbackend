class Jobapplication < ApplicationRecord
  belongs_to :job
  belongs_to :seeker
  has_one :employer,through: :job

end
