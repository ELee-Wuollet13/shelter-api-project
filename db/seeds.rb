# Review.destroy_all
#
# 50.times do |index|
#   Review.create!(name: Faker::Name.first_name,
#                         content: Faker::Lorem.sentence(word_count: 3),
#                         rating: Faker::Number.within(range: 1..5))
# end
#
# p "Created #{Review.count} reviews"

Address.destroy_all

5.times do |index|
  Address.create!(street_address: Faker::Address.street_address)

end

p "Created #{Place.count} places"
