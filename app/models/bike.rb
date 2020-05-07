class Bike < ApplicationRecord
  # belongs_to :user
  has_many :photos
  # belongs_to :comments
end
