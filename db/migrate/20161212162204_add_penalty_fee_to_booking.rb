class AddPenaltyFeeToBooking < ActiveRecord::Migration[5.0]
  def change
    add_monetize :bookings, :penalty_fee
  end
end
