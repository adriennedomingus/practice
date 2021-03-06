# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

1000.times do
 Author.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

1000.times do
 Article.create(title: Faker::Company.buzzword, body: Faker::Lorem.paragraph, author_id: Faker::Number.between(1, 1000))
end

100.times do
 Tag.create(name: Faker::Hacker.adjective)
end
