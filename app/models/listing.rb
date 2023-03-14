class Listing < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_one :chatroom
  # scope :with_kitchen, -> { where(kitchen: true) }
  # scope :with_private_bathroom, -> { where(private_bathroom: true) }
  # scope :with_laundry, -> { where(laundry: true) }
end
