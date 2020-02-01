
## Having tried both versions of the Seeder repeatedly I am entirely lost. the exact same program works when the variable is quotes, but fails cosistantly when it's anything else.
Shelter.destroy_all

20.times do |index|
  Shelter.create!(street_address: Faker::Address.street_address)

end

p "Created #{Shelter.count} places"
