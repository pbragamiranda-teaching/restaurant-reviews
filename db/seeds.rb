puts "Cleaning database.."

Restaurant.destroy_all

puts "Creating new restaurants.."

100.times do
  new_restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    stars: [1, 2, 3, 4, 5].sample,
    chef_name: ['Alex Atala', 'Gordon Ramsey', 'Paola Carossela', 'Vergonha da Profison'].sample
    )

  new_restaurant.save

  puts "#{new_restaurant.id} - #{new_restaurant.name} was created"

end


puts "done."
