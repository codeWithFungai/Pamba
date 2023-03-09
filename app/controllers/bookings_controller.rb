class BookingsController < ApplicationController
    
    def new 
        @booking = Booking.new
        @listing = Listing.find(params[:listing_id])
    end
    
    def index
    end

    def create
    end

    def show
    end

    def update
    end

    def delete
    end
end
