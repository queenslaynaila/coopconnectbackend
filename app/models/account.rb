class Account < ApplicationRecord
 has_secure_password
 belongs_to :seeker ,optional: true
 belongs_to :employer, optional: true

 validates :email, presence: true, uniqueness: true
 
 def owner
  @owner ||= seeker || employer
end

end
