class Admin::EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    authorize [:admin, @event]
  end

  def payment
    @event = Event.find(params[:id])
    @noshow_bookings = @event.bookings.where(attended:false)
  end
end
