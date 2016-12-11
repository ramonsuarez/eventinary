class Event < ApplicationRecord
  has_attachment :image
  monetize :penalty_fee_cents
  has_many :bookings
  belongs_to :organization
end
