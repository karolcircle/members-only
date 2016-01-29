class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { maximum: 50 }
  validates :password, length: { minimum: 6 }
  has_secure_password

end
