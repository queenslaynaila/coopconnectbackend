class Jobapplication < ApplicationRecord
  belongs_to :job
  belongs_to :seeker
 
end
