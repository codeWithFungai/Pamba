class ListingsController < ApplicationController
    #index: to display a list of all the available listings.
  def index
    if params[:location].present?
      @listings = Listing.where(location: params[:query])
    else
      @listings = Listing.all
    end
      # @markers = @listings.geocoded.map do |listing|
      #     {
      #       lat: listing.latitude,
      #       lng: listing.longitude
      #     }
      # end
  end

  def show
    @listings = Listing.find(params[:id])
  end

end
