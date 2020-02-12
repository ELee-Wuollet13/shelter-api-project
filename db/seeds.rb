
## Having tried both versions of the Seeder repeatedly I am entirely lost. the exact same program works when the variable is quotes, but fails cosistantly when it's anything else.
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_cats
    seed.generate_dogs
    seed.generate_others
  end


  def generate_cats
    20.times do |i|
      cat = Cat.create!(
        cat: Faker::Creature::Cat.name,
        cat_breed: Faker::Creature::Cat.breed
      )
    end
  end

  def generate_dogs
    20.times do |i|
      dog = Dog.create!(
        dog: Faker::Creature::Dog.name,
        dog_breed: Faker::Creature::Dog.breed
      )
    end
  end

  def generate_others
    20.times do |i|
      other = Other.create!(
        other: Faker::Creature::Animal.name
      )
    end
  end
end

Seed.begin
