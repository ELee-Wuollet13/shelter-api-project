class Seed

  def self.begin
    seed = Seed.new
    seed.generate_address
  end

  def generate_address
    20.times do |i|
      address = Adrress.create!(
        address: Faker::Address.street_address
      )
    end
  end
end

Seed.begin
