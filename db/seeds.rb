# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts "Creating restaurants..."
ejona = { name: "Ejona", address: '7 Boundary St, London E2 7JE', phone_number: '0698285865', category: 'italian' }
salt =  { name: "Salt", address: '56A Shoreditch High St, London E1 6PQ', category: 'japanese' }
nouvelle = { name: "Nouvelle", address: '58A Shoreditch High St, London E1 6PQ', category: 'french' }
charls = { name: "Charls", address: '59A Shoreditch High St, London E1 6PQ', category: 'italian' }
mrizi = { name: "Mrizi", address: '52A Shoreditch High St, London E1 6PQ', category: 'italian' }

[ejona, salt, nouvelle, charls, mrizi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
