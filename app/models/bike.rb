class Bike < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :photos
  has_many :comments
  has_many :favorites
end
