class Event < ApplicationRecord
  has_attachment :image
  include PgSearch
    multisearchable against: [:title, :description, :venue, :address]
  has_many :bookings
  belongs_to :organizatison
end
