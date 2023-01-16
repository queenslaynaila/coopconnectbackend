class Savedinternship < ApplicationRecord
  belongs_to :seeker
  belongs_to :internship
  has_one :employer, :through => :internship
end
