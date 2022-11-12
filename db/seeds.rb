require 'faker'

puts "🌱 Seeding data..."

# Seed your database here

# Create 10 cities
10.times do
    city = City.create(
        name: Faker::Address.city,
    )

#For each city, create 5 events
# 5.times.do
#     item = Item.create(
#         band: Faker::
#     )
# end

puts "✅ Done seeding!"
