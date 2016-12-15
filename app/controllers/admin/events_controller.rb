class Admin::EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
    authorize [:admin, @event]
  end

  def payment
  end
end
