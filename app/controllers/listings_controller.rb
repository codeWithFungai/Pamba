class ListingsController < ApplicationController

    #index: to display a list of all the available listings.
    def index
        @query = params[:search].nil ? "" : params[:search]
        if @query == ""
            @listing = Listing.all
        else
            @listing = Listing.where("listings.city ILIKE  ", @query.downcase + "%")
        end

        @markers = @listings.geocoded.map do |listing|
            {
              lat: listing.latitude,
              lng: listing.longitude
            }
    end

    #show: to display the details of a specific listing.
    def show
      @booking = @listing.bookings.find_by(user_id: current_user.id) if nil?
    end
end
