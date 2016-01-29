# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(
  name: "Banana",
  description: "Yellow fruit that people eat",
  price_in_cents: 25
)

Product.create(
  name: "Apple",
  description: "Red fruit that people eat",
  price_in_cents: 50
)

Product.create(
  name: "Peach",
  description: "Peach fruit that people eat",
  price_in_cents: 75
)

User.create(
  name: "Filip",
  email: "filips@gmail.com",
  password: "filip",
  password_confirmation: "filip"
)

# Player.create(
#   display_name: "cstaikos",
#   slack_handle: "cstaikos",
#   wins: 0,
#   losses: 0,
#   games_played: 0
# )
