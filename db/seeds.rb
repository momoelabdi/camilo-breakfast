require 'faker'

Bakery.delete_all

10.times do
  Bakery.create!(name: "Faker::Company.name", street: "Faker::Address.street_name", zip: "Faker::Address.zip", city: "Faker::Address.city")
end
