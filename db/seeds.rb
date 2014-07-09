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

prov1 = User.create(role: "provider", email: "provider1@provider.com", password: "provider", first_name: "Central London", last_name: "DryCleaning", address: "31 Broadwick Street", zipcode: "W1F 0DG", area: "Central London")
prov2 = User.create(role: "provider", email: "provider2@provider.com", password: "provider", first_name: "North London", last_name: "DryCleaning", address: "17 Fortess Road", zipcode: "NW51AD", area: "North London")
prov3 = User.create(role: "provider", email: "provider3@provider.com", password: "provider", first_name: "South London", last_name: "DryCleaning", address: "2 Balham Grove", zipcode: "SW12 8AY", area: "South London")
prov4 = User.create(role: "provider", email: "provider4@provider.com", password: "provider", first_name: "West London", last_name: "DryCleaning", address: "55 Barrowgate Rd", zipcode: "W4 4QT", area: "West London")
prov5 = User.create(role: "provider", email: "provider5@provider.com", password: "provider", first_name: "East London", last_name: "DryCleaning", address: "31 Brady St", zipcode: "E1 5DJ", area: "East London")

order1 = Order.create(pickup_time: "AM", pickup_day: Date.new(2014, 7, 6), return_day: Date.new(2014, 7, 7), return_time: "PM", instructions: "Ring the bell downstairs", wash: true, dry_cleaning: false, price: 30, user_id: 1)
order2 = Order.create(pickup_time: "PM", pickup_day: Date.new(2014, 7, 8), return_day: Date.new(2014, 7, 7), return_time: "PM", instructions: "Be very careful with the dress. Everything else is wash only.", wash: true, dry_cleaning: true, user_id: 1)
order3 = Order.create(pickup_time: "AM", pickup_day: Date.new(2014, 7, 6), return_day: Date.new(2014, 7, 8), return_time: "PM", instructions: "Super urgent. Thank you!", wash: false, dry_cleaning: true, user_id: 2)

cust1 = User.create(role: "customer", email: "chris@kentish.com", password: "password", first_name: "Chris", last_name: "Ruffoto", address: "15 Kentish Town Road", zipcode: "NW51AD", area: "North London")
cust2 = User.create(role: "customer", first_name: "John", last_name: "Doe", address: "370 Albany Rd", zipcode: "SE5 0AJ", area: "South London")




