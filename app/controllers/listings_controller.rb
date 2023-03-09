class ListingsController < ApplicationController

    #index: to display a list of all the available listings.
    def index
            @listings = Listing.all
        # @markers = @listings.geocoded.map do |listing|
        #     {
        #       lat: listing.latitude,
        #       lng: listing.longitude
        #     }
        # end
    end

    #show: to display the details of a specific listing.
        def show
            @listing = Listing.find(params[:id])
        end


  def show
    @listings = Listing.find(params[:id])
  end

end
