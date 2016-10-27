# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1.upto(10) do |index|
  User.create([
    {name: Faker::Name.name,
    email: "test#{index}@baseapi.com",
    password: 'baseapi99',
    password_confirmation: 'baseapi99'}
  ])
end

User.all.each do |user|
  Comment.create(body: Faker::ChuckNorris.fact, user_id: user.id)
end
