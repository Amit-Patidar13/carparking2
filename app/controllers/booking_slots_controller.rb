class BookingSlotsController < ApplicationController

  def index
    @booking_slots = current_user.admin? ? BookingSlot.all : BookingSlot.where(status: false)
  end

  def book
    booking = BookingSlot.find_by(id: params[:id])
    if params[:is_book_request] == 'true'
      user_id = current_user.admin? ? params[:users] : current_user.id
      booking.update(status: true, user_id: user_id)
    else
      booking.update(status: false, user_id: nil)
    end
    redirect_to root_path
  end
end 


  def new
  end

  # def create
  #   @booking = BookingSlot.new(bookingslot_params)
  #   if @booking.save
  #     flash[:notice] = "Booking "
  # end


# end

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