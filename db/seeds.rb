# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# u1 = User.create(email: "csoalhat@gmail.com", password: "caroline", role: "admin")
# u2 = User.create(email: "jon@doe.com", password: "caroline", role: "user")

# c1 = Client.create(first_name: "Caroline", last_name: "Soalhat", home_address: "4 Lancaster Grove", home_address_zipcode: "NW34NX", home_address_city: "London", phone: "07804106485", user_id: 1)
# c2 = Client.create(first_name: "Jon", last_name: "Doe", home_address: "17 Fortess Road", home_address_zipcode: "NW51AD", home_address_city: "London", phone: "07473783578", user_id: 2)

prov1 = User.create(role: "provider", email: "central@provider.com", password: "provider", first_name: "Central London", last_name: "DryCleaning", address: "31 Broadwick Street", zipcode: "W1F 0DG", area: "Central London")
prov2 = User.create(role: "provider", email: "north@provider.com", password: "provider", first_name: "North London", last_name: "DryCleaning", address: "17 Fortess Road", zipcode: "NW51AD", area: "North London")
prov3 = User.create(role: "provider", email: "south@provider.com", password: "provider", first_name: "South London", last_name: "DryCleaning", address: "2 Balham Grove", zipcode: "SW12 8AY", area: "South London")
prov4 = User.create(role: "provider", email: "west@provider.com", password: "provider", first_name: "West London", last_name: "DryCleaning", address: "55 Barrowgate Rd", zipcode: "W4 4QT", area: "West London")
prov5 = User.create(role: "provider", email: "east@provider.com", password: "provider", first_name: "East London", last_name: "DryCleaning", address: "31 Brady St", zipcode: "E1 5DJ", area: "East London")

# order1 = Order.create(pickup_time: "AM", pickup_day: Date.new(2014, 7, 10), return_day: Date.new(2014, 7, 10), return_time: "PM", instructions: "Stop losing my socks.", wash: true, dry_cleaning: false, price: 30, user_id: 1, provider_id: 2, status:"archived")
# order2 = Order.create(pickup_time: "PM", pickup_day: Date.new(2014, 7, 11), return_day: Date.new(2014, 7, 11), return_time: "PM", instructions: "Be very careful with the dress. Everything else is wash only.", wash: true, dry_cleaning: true, user_id: 1, provider_id: 2, status: "pending")
# order3 = Order.create(pickup_time: "AM", pickup_day: Date.new(2014, 7, 10), return_day: Date.new(2014, 7, 11), return_time: "PM", instructions: "Super urgent. Thank you!", wash: false, dry_cleaning: true, user_id: 2, provider_id: 2, status: "processed")
# order4 = Order.create(pickup_time: "PM", pickup_day: Date.new(2014, 7, 10), return_day: Date.new(2014, 7, 12), return_time: "PM", instructions: "Can you remove the lipstick before my girlfriend sees it?", wash: false, dry_cleaning: true, user_id: 2, provider_id: 2, status: "pending")
# order5 = Order.create(pickup_time: "PM", pickup_day: Date.new(2014, 7, 11), return_day: Date.new(2014, 7, 12), return_time: "AM", instructions: "You guys rock!", wash: true, dry_cleaning: false, user_id: 3, provider_id: 1, status: "processed")
# order6 = Order.create(pickup_time: "PM", pickup_day: Date.new(2014, 7, 12), return_day: Date.new(2014, 7, 13), return_time: "AM", instructions: "Thank you", wash: true, dry_cleaning: true, user_id: 4, provider_id: 2, status: "pending")

# cust1 = User.create(role: "customer", email: "gerry@gerry.com", password_confirmation: "password" password: "password", first_name: "Gerry", last_name: "Mathe", address: "La Gym", zipcode: "NW6")
# cust2 = User.create(role: "customer", email:"csoalhat@gmail.com", password: "password", first_name: "Caroline", last_name: "Soalhat", address: "4 Lancaster Grove", zipcode: "NW3")
# cust3 = User.create(role: "customer", email:"jon@jon.com", password: "password", first_name: "Jon", last_name: "Chambers", address: "Boris Bike", zipcode: "EC1")
# cust4 = User.create(role: "customer", email:"julien@julien.com", password: "password", first_name: "Julien", last_name: "Deslangles", address: "Back Hill", zipcode: "EC1")





