puts 'Cleaning database'
Restaurant.destroy_all

puts 'Creating restaurants...'

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address:,
    category:,
    phone_number:,
  )
end