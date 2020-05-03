class User < ApplicationRecord
  has_many:bikes
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
