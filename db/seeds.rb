Shelter.destroy_all

50.times do |index|
  Shelter.create!(country: Faker::Address.street_address)

end

p "Created #{Shelter.count} places"
