class AddStripePaymentInfoToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :stripe_payment_info, :json
  end
end
