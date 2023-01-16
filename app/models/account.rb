class Account < ApplicationRecord
 has_secure_password

 belongs_to :seeker ,optional: true
 belongs_to :employer, optional: true

 validates :password, presence: true ,format: { with: /(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])/, message: "Password must contain at least one uppercase letter, one number, and one special character" }


 validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Please enter a valid email address" }

 

end
