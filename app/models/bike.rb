class Bike < ApplicationRecord
  # belongs_to :user
  has_many :photos
  has_many :comments
  has_many :favorites
end
