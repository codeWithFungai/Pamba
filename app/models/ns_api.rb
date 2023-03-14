# require "httparty"

# class NSApi

#     def self.getStations 
#         headers = {
#             "Cache-Control" => "no-cache",
#             "Ocp-Apim-Subscription-Key" => "c7257787c2e14890a7fd3e571eb417c4"
#           }
      
#           amsterdam = {
#             "latitude" => 52.341051887583106,
#             "longitude" => 4.854343356138673
#           }

#           location = {
#             "latitude" => 51.57,
#             "longitude" => 4.76
#           }
    
#            response = HTTParty.get("https://gateway.apiportal.ns.nl/reisinformatie-api/api/v2/stations/nearest?lat=
#                                            #{location['latitude']}&lng=-#{location['longitude']}&limit=2",
#                                            headers: headers)
#            station_depart_name = response.parsed_response["payload"].first["namen"]["lang"]
#            station_depart_code = response.parsed_response["payload"].first["code"]
      
#            response2 = HTTParty.get("https://gateway.apiportal.ns.nl/reisinformatie-api/api/v2/stations/nearest?lat=
#                                            #{amsterdam["latitude"]}&lng=-#{amsterdam["longitude"]}&limit=2",
#                                            headers: headers)
#            station_arrive_name = response2.parsed_response["payload"].first["namen"]["lang"]
#            station_arrive_code = response2.parsed_response["payload"].first["code"]
      
#            trip_price = HTTParty.get("https://gateway.apiportal.ns.nl/reisinformatie-api/api/v3/price?fromStation=asd&toStation=amr&travelClass=SECOND_CLASS&
#                                            travelType=single&isJointJourney=false&adults=1&children=0",
#                                            headers: headers).parsed_response["payload"]["prices"][0]["totalPriceInCents"]

#             return [station_depart_name, station_arrive_name ]
#     end

#     def self.test 
#         headers = {
#             "Cache-Control" => "no-cache",
#             "Ocp-Apim-Subscription-Key" => "c7257787c2e14890a7fd3e571eb417c4"
#           }
    
#           location = {
#             "latitude" => 50.3495759,
#             "longitude" => 3.8920742
#           }
    
#            response = HTTParty.get("https://gateway.apiportal.ns.nl/reisinformatie-api/api/v2/stations/nearest?lat=
#                                            #{location['latitude']}&lng=-#{location['longitude']}&limit=2",
#                                            headers: headers)
#            station_depart_name = response.parsed_response["payload"].first["namen"]["lang"]
#            station_depart_code = response.parsed_response["payload"].first["code"]

#            return station_depart_name
#     end
# end