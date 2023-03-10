class ListingsController < ApplicationController


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


    @markers = @listings.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {listing: listing}),
        marker_html: render_to_string(partial: "marker")
      }
  end

  def show
    @listing = Listing.find(params[:id])
  end
end
end
