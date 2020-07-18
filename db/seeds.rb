puts 'Cleaning database'
Restaurant.destroy_all

puts 'Creating restaurants...'

first_restaurant = { name: Faker::Restaurant.name, address: Faker::Address.street_address,
                     category: %w[chinese italian japanese french belgian].sample,
                     phone_number: Faker::PhoneNumber.cell_phone_in_e164 }

second_restaurant = { name: Faker::Restaurant.name, address: Faker::Address.street_address,
                      category: %w[chinese italian japanese french belgian].sample,
                      phone_number: Faker::PhoneNumber.cell_phone_in_e164 }

[first_restaurant, second_restaurant].each do |restaurant|
  restaurant = Restaurant.create!(restaurant)
  puts "Created #{restaurant.name}"
end

puts 'Finished'
