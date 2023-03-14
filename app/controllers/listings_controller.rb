class ListingsController < ApplicationController
  def index
    # raise
    @distance = 30
    @distance = params[:distance] if params[:distance].present?
    @price = 95
    @price = params[:price] if params[:price].present?
    @rooms = 1
    @rooms = params[:nr_of_rooms] if params[:nr_of_rooms].present?

    @flat = false
    @flat = true if params[:flat] == '1'
    @town = false
    @town = true if params[:townhouse] == '1'
    @semi = false
    @semi = true if params[:semidetached] == '1'
    @detach = false
    @detach = true if params[:detached] == '1'

    @kit = false
    @kit = true if params[:kitchen] == '1'
    @laud = false
    @laud = true if params[:laundry] == '1'
    @prv = false
    @prv = true if params[:private_bathroom] == '1'

    @city = 'Amsterdam'
    @city = params[:city] if params[:city].present?

    if params[:city].present?
      @listings = Listing.where(city: params[:city].capitalize)
    else
      @listings = Listing.all
    end

    @listings = @listings.where(kitchen: true) if params[:kitchen] == '1'
    @listings = @listings.where(laundry: true) if params[:laundry] == '1'
    @listings = @listings.where(private_bathroom: true) if params[:private_bathroom] == '1'
    @listings = @listings.where("distance <  ?", params[:distance].to_i) if params[:distance].present?
    @listings = @listings.where("price <  ?", params[:price].to_i) if params[:price].present?
    @listings = @listings.where("nr_of_rooms >=  ?", params[:nr_of_rooms].to_i) if params[:nr_of_rooms].present?

    @towns = @listings.where(style: "Townhouse") if params[:townhouse] == '1'
    @flats = @listings.where(style: "Flat") if params[:flat] == '1'
    @semis = @listings.where(style: "Semi-detached") if params[:semidetached] == '1'
    @detachs = @listings.where(style: "Detached") if params[:detached] == '1'

    if @towns.present? || @flats.present? || @semis.present? || @detachs.present?
      @listings = []
    end

    @listings += @towns unless @towns.nil?
    @listings += @flats unless @flats.nil?
    @listings += @semis unless @semis.nil?
    @listings += @detachs unless @detachs.nil?

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
                                     #{@listing.latitude}&lng=#{@listing.longitude}",
                                     headers: headers)
     @station_depart_name = response.parsed_response["payload"].first["namen"]["lang"]
     @station_depart_code = response.parsed_response["payload"].first["code"]

     response2 = HTTParty.get("https://gateway.apiportal.ns.nl/reisinformatie-api/api/v2/stations/nearest?lat=
                                     #{amsterdam["latitude"]}&lng=#{amsterdam["longitude"]}",
                                     headers: headers)
     @station_arrive_name = response2.parsed_response["payload"].first["namen"]["lang"]
     @station_arrive_code = response2.parsed_response["payload"].first["code"]

     @trip_price = HTTParty.get("https://gateway.apiportal.ns.nl/reisinformatie-api/api/v3/price?fromStation=asd&toStation=amr&travelClass=SECOND_CLASS&
                                     travelType=single&isJointJourney=false&adults=1&children=0",
                                     headers: headers).parsed_response["payload"]["prices"][0]["totalPriceInCents"]
  end

end

