class BookingSlotsController < ApplicationController

  def index
    @bookings = current_user.admin? ? BookingSlot.all : BookingSlot.where(status: false)
  end

  def book
    booking = BookingSlot.find_by(id: params[:id])
    if params[:is_book_request] == 'true'
      booking.update(status: true, user_id: current_user.id)
      redirect_to root_path
    else
      booking.update(status: false, user_id: nil)
      redirect_to my_bookings_path
    end
  end 


  # def new
  #   @booking = BookingSlot.new
  # end

  # def create
  #   @booking = BookingSlot.new(bookingslot_params)
  #   if @booking.save
  #     flash[:notice] = "Booking "
  # end


end


# def create   
#   @product = Product.new(product_params)   
#   if @product.save   
#     flash[:notice] = 'Product added!'   
#     redirect_to root_path   
#   else   
#     flash[:error] = 'Failed to edit product!'   
#     render :new   
#   end   
# end 