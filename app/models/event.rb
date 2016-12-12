class Event < ApplicationRecord
  has_attachment :image

  include PgSearch
    multisearchable against: [:title, :description, :venue, :address]

  monetize :penalty_fee_cents

  has_many :bookings
  belongs_to :organizatison
end
