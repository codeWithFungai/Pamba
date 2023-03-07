class Booking < ApplicationRecord
  belongs_to :user_id
  belongs_to :listing_id
  has_many :reviews
end
