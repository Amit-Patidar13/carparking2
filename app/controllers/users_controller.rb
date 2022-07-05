class UsersController < ApplicationController

  def index
    @users = User.new
  end

  def userdetails
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id])
    @booking_slot_id = params[:booking_slot_id]
  end

  def my_bookings
    @my_bookings = BookingSlot.where(user_id: current_user.id)
  end

end
