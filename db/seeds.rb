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
    {street: '48 Square de la Couronne', city: 'Paris'},
    {street: '25 Square de la Couronne', city: 'Paris'},
    {street: '55 Square de la Couronne', city: 'Paris'},
    {street: '32 Place de la Madeleine', city: 'Paris'},
    {street: '4 rue Nationale', city: 'Paris'},
    {street: '46 Place de la Madeleine', city: 'Paris'},
    {street: '85 rue Nationale', city: 'Paris'},
    {street: '33 Faubourg Saint Honoré', city: 'Paris'},
    {street: '12 rue La Boétie', city: 'Paris'},
    {street: 'Solidarnoscstraat 90', city: 'Haarlem'},
    {street: 'Engelandlaan 179', city: 'Haarlem'},
    {street: 'Julianastraat 162', city: 'Haarlem'},
    {street: 'Besoekistraat 21', city: 'Haarlem'},
    {street: 'Monacopad 94', city: 'Haarlem'},
    {street: 'Tobias Asserstraat 43', city: 'Haarlem'},
    {street: '3 Richmond Road', city: 'London'},
    {street: '494 Kings Road', city: 'London'},
    {street: '86 Springfield Road', city: 'London'},
    {street: '50 Grange Road', city: 'London'},
    {street: '132 Church Road', city: 'London'},
    {street: '535 Kingsway', city: 'London'},
    {street: '969 Broadway', city: 'London'},
    {street: '65 West Street', city: 'London'},
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
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Listing.destroy_all

addresses.each do |address|
  Listing.create!(
    title: ['Beautiful Rental', 'Cozy Place for Rent', 'Rental with Great View',
            'Rental with Character', 'Newly Renovated Rental', 'Unique Place to Stay',
            'Awesome Rental Opportunity', 'One of a Kind Place', 'Stunning Rental',
            'Look No Further', 'Lovely Place to Stay'].sample,
    address: address[:street],
    city: address[:city],
    description: descriptions.sample,
    price: [700, 750, 800, 850, 900, 950, 1000, 1100, 1200, 1300].sample,
    kitchen: [true, false].sample,
    private_bathroom: [true, false].sample,
    laundry: [true, false].sample,
    distance: 0,
    style: ['Flat', 'Townhouse', 'Detached', 'Semi-detached'].sample,
    nr_of_rooms: rand(1..3)
  )
end
