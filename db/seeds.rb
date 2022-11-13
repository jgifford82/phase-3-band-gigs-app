require 'faker'

puts "🌱 Seeding data..."

# Destroy all records from tables before executing the rest of the seed code so tables don't get too big while experimenting with project. 
# This doesn't overwrite ID numbers. Can use "rake db:reset" instead of destroy_all to drop database, run migrations, then run seed file. No need to run "rake db:migration" or "rake db:seed" in that case. 
City.destroy_all
Event.destroy_all

# Seed your database here

# Create 10 cities
10.times do
    city = City.create(
        name: Faker::Address.city,
    )

    #For each city, create 5 events
    5.times.do
    item = Item.create(
        band: Faker::Music.band,
        venue: Faker::University.name,
        # Random date in the future (up to maximum of N days)
        # Keyword arguments: days
        date: Faker::Date.forward(days: 60),
        # Random Time in the future 
        # Keyword arguments: period, format
        time: Faker::Time.forward(period: :evening, format: :long)
        price: Faker::Commerce.price
        # Don't need to randomly assign foreign keys like City.ids.sample since each instance has a variable name (lines 14, 20)
        city_id: city.id
        # city_id: City.ids.sample
    )
    end

puts "✅ Done seeding!"
