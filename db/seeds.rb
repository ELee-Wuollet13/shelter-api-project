
## Having tried both versions of the Seeder repeatedly I am entirely lost. the exact same program works when the variable is quotes, but fails cosistantly when it's anything else.
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_shelters
  end

  def generate_shelters
    20.times do |i|
      shelter = Shelter.create!(
        street_address: Faker::Address.street_address
      )
    end
  end
end

Seed.begin
