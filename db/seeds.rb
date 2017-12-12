class Seed

  def self.begin
    seed = Seed.new
    seed.generate_users
    seed.generate_destinations
    seed.generate_reviews
  end

  def generate_users
    5.times do |i|
      user = User.create!(
        name: Faker::Superhero.name
      )
      puts "User #{i}: name is #{user.name}"
    end
  end

  def generate_destinations
    20.times do |i|
      destination = Destination.create!(
        country: Faker::Address.country,
        city: Faker::Address.city,
        description: Faker::Hipster.sentence
      )
      puts "Destination #{i}: country is #{destination.country} and city is '#{destination.city} and description is '#{destination.description}'."
    end
  end

  def generate_reviews
    100.times do |i|
      review = Review.create!(
        rating: rand(1..5),
        content: Faker::Hipster.sentence(3),
        user_id: rand((User.first.id)..(User.last.id)),
        destination_id: rand((Destination.first.id)..(Destination.last.id))
      )
      puts "Review #{i}: rating is #{review.rating} and content is '#{review.content} and user_id is '#{review.user_id} and destination_id is '#{review.destination_id}'."
    end
  end
end

Seed.begin
