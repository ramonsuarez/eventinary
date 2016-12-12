class Event < ApplicationRecord
  has_many :bookings
  belongs_to :organization
  has_attachment :image
  include PgSearch
  multisearchable against: [:title, :description, :public]
  monetize :penalty_fee_cents
end
