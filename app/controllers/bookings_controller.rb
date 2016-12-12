class BookingsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    booking  = Booking.create!(event_id: @event.id, penalty_fee: @event.penalty_fee, stripe_payment_info: 'pending')
    redirect_to new_event_booking_payment_path(@event.id, booking)
  end

  def cancel
  end
end
