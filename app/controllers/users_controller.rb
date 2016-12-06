class UsersController < ApplicationController

  def show
    @user = User.find(user_params)
  end

private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :average_rating, :description, :photo)
  end

end
