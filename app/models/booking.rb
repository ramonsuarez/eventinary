class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  monetize :penalty_fee_cents
end
