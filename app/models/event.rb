class Event < ApplicationRecord
  has_many :bookings
  belongs_to :organization
  validates :title,
            :penalty_fee,
            :quantity,
            :organization,
            :cancellation_policy,
            :image, presence: true
  has_attachment :image
  include PgSearch
  multisearchable against: [:title, :description, :public]
  monetize :penalty_fee_cents
  self.per_page = 3
end
