class Event < ApplicationRecord
  has_attachment :image

  has_many :bookings
  belongs_to :organization
end
