# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Event.destroy_all

15.times do
 Event.create(
   title: Faker::Book.title,
   offline: true,
   venue: Faker::Pokemon.location,
   address: Faker::Address.street_address,
   city: Faker::Address.city,
   state: Faker::Address.state,
   postcode: Faker::Address.postcode,
   country: Faker::Address.country,
   start: Faker::Time.between(2.days.ago, Date.today, :evening),
   end: Faker::Time.between(2.days.ago, Date.today, :midnight),
   image: Faker::Placeholdit.image,
   description: Faker::Hipster.paragraphs,
   ticket_name: Faker::StarWars.planet,
   quantity: 100,
   penalty_fee: 10,
   public: false,
   price: 0
 )
end
