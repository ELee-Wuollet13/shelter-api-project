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
      puts "Shelter #{i}: Author is #{shelter.author} and quotation is '#{shelter.content}'."
    end
  end
end

Seed.begin
