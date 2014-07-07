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

p1 = Cleaner.create(area: "Central", name: "Pressing Farringdon", phone: "02389477783", information: "Fast but a bit more expensive", area: "north")
p2 = Cleaner.create(area: "North", name: "Kentish Town", phone: "0237977783", information: "Cheaper. Dont take beddings", area: "central")

o1 = Order.create(client_id: 1, instructions: "as fast as possible", dry_cleaning: true, wash: false)
o3 = Order.create(client_id: 1, instructions: "Ring the bell number 3", dry_cleaning: false, wash: true)
o2 = Order.create(client_id: 2, instructions: "be VERY careful with my wife's dress", dry_cleaning: true, wash: true)

d1 = Driver.create(first_name: "Paul", last_name: "Rister", phone: "0780399087", car: "medium", area: "north")
d2 = Driver.create(first_name: "Emile", last_name: "Donner", phone: "0778999087", car: "small", area: "central")