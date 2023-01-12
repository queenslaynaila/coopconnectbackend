class Account < ApplicationRecord
<<<<<<< HEAD
  has_secure_password
  belongs_to :seeker, optional: true
  belongs_to :employer, optional: true
=======
 has_secure_password
 belongs_to :seeker ,optional: true
 belongs_to :employer, optional: true

 validates :email, presence: true, uniqueness: true
 
 def owner
  @owner ||= seeker || employer
end
>>>>>>> da6998bda5e98c2a5ef003173f313c9181504bce

  def owner
    @owner ||= seeker || employer
  end
end
