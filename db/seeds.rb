class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    20.times do |i|
      author =
      destination = Destination.create!(
        country: Faker::Address.country,
        city: Faker::Address.city,
        description: Faker::Hipster.sentence
      )
      puts "Destination #{i}: country is #{destination.country} and city is '#{destination.city} and description is '#{destination.description}'."
    end
  end
end

Seed.begin
