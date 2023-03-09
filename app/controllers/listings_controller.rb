class ListingsController < ApplicationController
    #index: to display a list of all the available listings.
  def index
    @listings = []

    if params[:location].present?
      @listings = Listing.where(city: params[:location].capitalize)
    else
      @listings = Listing.all
    end

    if params[:with_kitchen].present?
      @listings << Listing.with_kitchen
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
