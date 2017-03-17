class Store < ActiveRecord::Base
  has_secure_password
  has_many :items
  #validates :first_name,:email, presence:, :password_digest true
end
