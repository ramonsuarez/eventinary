class UsersController < ApplicationController
 before_action :authenticate_user!

  def show
    @user = User.find(current_user)
    @events_booked = current_user.bookings.map do |booking|
      booking.event
    end
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :phone, :avatar)
  end
end
