require 'faker'



Listing.destroy_all

addresses = [
    {street: 'Lizzy Ansinghstraat 20', city: 'Amsterdam'},
    {street: 'Bilderdijkstraat 179', city: 'Amsterdam'},
    {street: 'Wilhelminastraat 145', city: 'Amsterdam'},
    {street: 'Kortenbergpad 46', city: 'Amsterdam'},
    {street: 'Seinwachterstraat 131', city: 'Amsterdam'},
    {street: 'Beemsterstraat 57', city: 'Amsterdam'},
    {street: 'Tweede Jan Steenstraat 103', city: 'Amsterdam'},
    {street: 'Lange Distelstraat 17', city: 'Amsterdam'},
    {street: 'Purmerplein 96', city: 'Amsterdam'},
    {street: 'Julianaplein 51', city: 'Amsterdam'},
    {street: 'Churchilllaan 7', city: 'Amsterdam'},
    {street: 'Valckenierstraat 6', city: 'Amsterdam'},
    {street: 'Avogadrostraat 42', city: 'Amsterdam'},
    {street: 'Molenwijk 132', city: 'Amsterdam'},
    {street: 'Delle Alpihof 115', city: 'Amsterdam'},
    {street: 'Lizzy Ansinghstraat 19', city: 'Amsterdam'},
    {street: 'Jekerstraat 8', city: 'Amsterdam'},
    {street: '91 rue La Boétie', city: 'Paris'},
    {street: '24 Av. du Bel air', city: 'Paris'},
    {street: '61 Rue de Buzenval', city: 'Paris'},
    {street: '15 Ter Rue Lamblardie', city: 'Paris'},
    {street: '32 Place de la Madeleine', city: 'Paris'},
    {street: '4 rue Nationale', city: 'Paris'},
    {street: '46 Place de la Madeleine', city: 'Paris'},
    {street: '85 rue Nationale', city: 'Paris'},
    {street: '33 Faubourg Saint Honoré', city: 'Paris'},
    {street: '12 rue La Boétie', city: 'Paris'},
    {street: '3 Richmond Road', city: 'London'},
    {street: '494 Kings Road', city: 'London'},
    {street: '86 Springfield Road', city: 'London'},
    {street: '150 Piccadilly', city: 'London'},
    {street: '132 Church Road', city: 'London'},
    {street: '535 Kingsway', city: 'London'},
    {street: '43 West Street', city: 'London'},
    {street: '9280 North Street', city: 'London'},
  ]



  descriptions = ['Lovely place for rent. Newly renovated. Close to shopping center and walking distance from train station.',
    'Available immediately, this spacious flat is close to the city center. Short or long-term rental.',
    'Newly remodeled flat with a spacious kitchen and dining area. CLose to bus and train stations.',
    'One of a kind find. Pets OK. Lovely view of the city and the canal. One month deposit.',
    'A well presented two bedroom end of terrace house recently refurbished with large through lounge dining room.',
    'The property has a modern kitchen with white goods, two good size bedroom, private garden and off street parking for one car.',
    'Beautiful garden flat with communal entrance comprises of large lounge with entertaining space.',
    'A superb first floor conversion in popular location. Entrance hall, large reception room with dining area and feature fireplace.',
    'A really spacious and well presented two double bedroom apartment located in city center. Walking distance to the mainline station and town centre.',
    'A lovely two bedroom ground floor purpose built apartment located in a quiet cul de sac in the heart of the city.',
    'Stunning one bedroom ground floor flat with private garden,a good size modern kitchen with appliances and spacious lounge.',
    'Unique and rare to the market is this immaculate one bedroom ground floor apartment with a private terrace overlooking the communal gardens.'
]

text = ['Great stay conveniently located walking distance to public transportation. Everything was 5-15 minutes by metro / rail car, or a very enjoyable bike ride all throughout the whole city 15-20 mins away',
'Overall, our stay was good! The room was clean, spacious and had everything that we needed. Transport links are excellent, as it was only 10 minutes from the airport, and 5 minutes into Amsterdam central, where we went every day!',
'What a gem! The place is located conveniently near the train and bus stations to get you into the city or to the airport quickly. The accommodations were clean and cozy, and they have a laundry, a mini market, a gym, and a sauna. It made everything for my short stay very convenient.',
'Perfect location a little bit outside the center. The tram literally went straight outside the place, super quick to get around. No noises form the train station. The place was super clean. Good value for the money',
'The apartment is nice and roomy for two people, sadly it was a bit cold when we were staying there and it took a while for the water to get warm. Otherwise it is comfortable and roomy. The city center is within walkable distance.',
'Very clean apartment with a great, a little less crowded position in the city. Everything can be reached within 20 minutes by foot.
We were really pleased. Marissa answered every question within minutes and was very helpful.',
'Great connections to all city with the tram stopping 2 minutes from the door.
Marissa was very helpful, easy to communicate with and made us feel very welcome.
We couldnt pick a best place to stay for our trip!',
'Good place to relax. Quite. A little bit far from center, but bikes help a lot. If not cycling, then possible get to subway station in 15 mins by bike. Two bikes included. Everything works good: I was during second half of November and warm inside and there is hot water and everything clean, so no problems.',
'The accomodation is just outskirts of the city center and the small city is very beautiful and has amazing restaurants and cuisine. We really enjoyed coming back from busy and loud city to calm and beautiful Ouderkerk to our accomodation.',
'The apartment is not close to the city, it’s like a forty minute bike ride to the city center, and a twenty minute walk to the closest bus station.
But the apartment is located in a quite and a peaceful location, very close to nature.',
'Excellent location! From this house you can easily reach everything by bike (you will reach the center after 30/35 minutes). Moreover during your bike ride you will be able to enjoy wonderful landscapes.',
'Amazing tiny home that really felt like home. It was a short trip to the bus stop to go into the city center and close to other amazing views. Would definitely stay again!',
'Bit far off public centers so it is best to ensure bicycle availability. Otherwise, a lovely little place and truly welcoming and helpful hosts.',
'The tiny house amazed us from the first moment. The table outside was the perfect place for breakfast as well.',
'Very nicely located, in a green and friendly neighborhood.',
'An amazing tiny house right next to the channel. It was sparkling clean and has a very welcoming outdoor seating area with a picknick bench. I would recommend bringing a parasols in the summer.',
'Beautiful private accommodations in classic Dutch home, walking distance to city center and Train to take you everywhere! Aldi a few steps away was a bonus……',
' Very cosy, in a quiet neighborhood, but still a stone’s throw away from the center and the train station in Zandam. City center is just 10 minutes away! Perfect location!',
'Zaadam is a perfect location and lovely town. Am’s place is very close to train station where trains are regular to lots of places to visit.
The accommodation is small as stated but with using as city break only really needed for sleeping. Garden area was a bonus.',
'Great little place to stay with good transport links to the city centre. Would definitely recommend!',
'I had an absolutely lovely stay, the studio is extra clean, very cute and comfy. The arrival is very easy and its also very simple to get to the city center, the train station is close and there is a train every 15minutes or so. I highly recommend',
'The flat itself is exactly as described, with some homely welcoming touches on arrival. There’s only microwave cooking possible. For the location the price is excellent. The little outdoor area is a nice bonus.',
'I loved the quiet and green neighbourhood, the short walk to the train station was easy and scenic. The garden terrace got beautiful sunshine through the plants in the morning and would be a wonderful place to sit with a drink in the evenings. Trains into city center go regularly and the staff at the station are helpful.',
'Amazing location, only a stones throw away from train station, with trains that run to the city center that only take 15 min and continue till 3am.'
]




ids = User.all.pluck(:id)
wagon_geo = {
  "Amsterdam"=> [52.341051887583106, 4.854343356138673],
  "London"=> [51.532943660406794, -0.07694804573254005],
  "Paris"=> [48.86502442472922, 2.379906642554615]
}
count = 0
addresses.each do |address|
count += 1
  listing_coordinates = Geocoder.coordinates("#{address[:street]}, #{address[:city]}") #returns longitude - latitude array i.e. => [42.700149, -74.922767]
  puts "#{listing_coordinates} for address #{count}"

  calc_distance = Geocoder::Calculations.distance_between(wagon_geo[address[:city]], listing_coordinates)

  listing = Listing.create!(
    title: ['Beautiful Rental', 'Cozy Place for Rent', 'Rental with Great View',
            'Rental with Character', 'Newly Renovated Rental', 'Unique Place to Stay',
            'Awesome Rental Opportunity', 'One of a Kind Place', 'Stunning Rental',
            'Look No Further', 'Lovely Place to Stay'].sample,
    image: ['https://source.unsplash.com/random/500x500/?apartment',
            'https://source.unsplash.com/random/500x501/?apartment',
            'https://source.unsplash.com/random/500x502/?apartment',
            'https://source.unsplash.com/random/500x503/?apartment',
            'https://source.unsplash.com/random/500x504/?apartment',
            'https://source.unsplash.com/random/500x505/?apartment',
            'https://source.unsplash.com/random/500x506/?apartment',
            'https://source.unsplash.com/random/500x507/?apartment',
            'https://source.unsplash.com/random/500x508/?apartment',
            'https://source.unsplash.com/random/500x509/?apartment',
            'https://source.unsplash.com/random/500x510/?apartment'].sample,
    address: address[:street],
    city: address[:city],
    description: descriptions.sample,
    price: [25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95].sample,
    kitchen: [true, false].sample,
    private_bathroom: [true, false].sample,
    laundry: [true, false].sample,
    distance: calc_distance,
    style: ['Flat', 'Townhouse', 'Detached', 'Semi-detached'].sample,
    nr_of_rooms: rand(1..3),
    longitude: listing_coordinates[1],
    latitude: listing_coordinates[0]
  )

  10.times do
    booking = Booking.create(
      listing_id: listing.id,
      user_id: ids.sample,
      start_date: Faker::Date.between(from: '2020-02-23', to: '2020-04-25'),
      end_date: Faker::Date.between(from: '2020-04-23', to: '2020-06-25')
    )
    Review.create(
    booking_id: booking.id,
    content: text.sample,
    rating: rand(3..5),
    transport: ['Train', 'Tram', 'Bus', 'Bike', 'Walk'].sample,
    groceries: ['ALbert Heijn', 'Aldi', 'Jumbo', 'Plus', 'Lidl'].sample,
    restaurant: Faker::Restaurant.name,
    activities: ['Bowling', 'Billiards', 'Sight Seeing', 'Open Market', 'Museum', 'Park', 'Walking Tour'].sample(2),
    tips: ['Pre-purchase tickets where possible', 'Book accommodation and restaurants in advance', 'Lock your bike...twice', 'Pack layers of clothing', 'Buy an OV-chipkaart for travel around the city', 'Mind the cyclists and cycling lanes', 'Dont rent a car, rent a bike instead', 'Watch out for pickpockets'].sample
      )

  end
end

# SEED FOR REVIEWS

# 130 - 172





# t.text "content"
# t.integer "rating"
# t.bigint "booking_id", null: false
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.string "transport"
# t.string "groceries"
# t.string "restaurant"
# t.text "activities"
# t.text "tips"
# t.index ["booking_id"]


# SEED FOR USERS

# 10.times {
#   User.create!(
#     email: Faker::Internet.email,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     password: "123456"
#   )
# }

# SEED FOR BOOKINGS
