class Customer < ActiveRecord::Base
  has_secure_password
  has_many :comments
  #validates :first_name,:email, presence:, :password_digest true
end
