
Address.destroy_all

5.times do |index|
  Place.create!(city: Faker::Address.city,
                        street_address: Faker::Address.street_address)

end

p "Created #{Place.count} places"
