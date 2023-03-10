class ReviewsController < ApplicationController
  before_action :set_review, only: %i[update edit destroy]

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    redirect_to root_path if @review.save
  end

  def update
    @review = Review.update(review_params)
  end

  def destroy
    @review.delete
    redirect_to listings_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :transport, :groceries, :restaurant, :activities, :tips)
  end

  def set_review
    @review = Review.find(params[:review_id])
  end
end
