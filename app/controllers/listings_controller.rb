class ListingsController < ApplicationController

  def index
    @listings = Listing.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @listings.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {listing: listing}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

end
