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

    if params[:with_laundry].present?
      @listings << Listing.with_laundry
    end

    if params[:with_private_bathroom].present?
      @listings << Listing.with_private_bathroom
    end

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
    @booking = Booking.new
    @markers = [{lat: @listing.latitude, lng: @listing.longitude, marker_html: render_to_string(partial: "marker")}]
    # api_key = "c7257787c2e14890a7fd3e571eb417c4"
    headers = {
      "Cache-Control" => "no-cache",
      "Ocp-Apim-Subscription-Key" => "c7257787c2e14890a7fd3e571eb417c4"
    }

    amsterdam = {
      "latitude" => 52.341051887583106,
      "longitude" => 4.854343356138673,
    }
    

     response = HTTParty.get("https://gateway.apiportal.ns.nl/reisinformatie-api/api/v2/stations/nearest?lat=
                                     #{@listing.latitude}&lng=-#{@listing.longitude}&limit=2",
                                     headers: headers)
     @station_depart_name = response.parsed_response["payload"].first["namen"]["lang"]
     @station_depart_code = response.parsed_response["payload"].first["code"]

     response2 = HTTParty.get("https://gateway.apiportal.ns.nl/reisinformatie-api/api/v2/stations/nearest?lat=
                                     #{amsterdam["latitude"]}&lng=-#{amsterdam["longitude"]}&limit=2",
                                     headers: headers)
     @station_arrive_name = response2.parsed_response["payload"].first["namen"]["lang"]
     @station_arrive_code = response2.parsed_response["payload"].first["code"]

     @trip_price = HTTParty.get("https://gateway.apiportal.ns.nl/reisinformatie-api/api/v3/price?fromStation=asd&toStation=amr&travelClass=SECOND_CLASS&
                                     travelType=single&isJointJourney=false&adults=1&children=0",
                                     headers: headers).parsed_response["payload"]["prices"][0]["totalPriceInCents"]
  end

end

