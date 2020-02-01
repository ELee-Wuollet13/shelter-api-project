Shelter.destroy_all

20.times do |index|
  Shelter.create!(street_address: Faker::Address.street_address)

end

p "Created #{Shelter.count} places"
