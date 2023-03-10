class BookingsController < ApplicationController
  before_action :set_booking, only: %i[update edit destroy show]

  def new
    @booking = Booking.new
    @listing = Listing.find(params[:listing_id])
  end

  def show
    # raise
    @listing = @booking.listing
  end

  def index
    @bookings = Booking.where(user: current_user)
    @review = Review.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.listing = Listing.find(params[:listing_id])
    redirect_to bookings_path if @booking.save
  end

  def edit
    @booking = Booking.find(params[:booking_id])
  end

  def update
    @booking = Booking.update(booking_params)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
