# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = []

1.times do |n|
	user = User.create(email: "email#{n}@yopmail.com",
										 encrypted_password: Faker::Lorem.paragraph,
										 description: Faker::Lorem.paragraph,
										 first_name: Faker::Name.first_name,
										 last_name: Faker::Name.last_name
		)
	users << user
	puts "Création utilisateur #{n}"
end