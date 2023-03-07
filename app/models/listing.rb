class Listing < ApplicationRecord
    has_many :bookings
    has_many :reviews, through: :bookings, dependent: :destroy
end
