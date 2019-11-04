# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nb_users = 5
nb_events = 5

nb_users.times do |n|
	User.create(email: "email#{n}@yopmail.com",
							encrypted_password: Faker::Lorem.paragraph,
							description: Faker::Lorem.paragraph,
							first_name: Faker::Name.first_name,
							last_name: Faker::Name.last_name)
	puts "Création des utilisateurs -- #{n}"
end

nb_events.times do |n|
	Event.create(start_date: rand(t1..t2),
    					 duration: rand(5..100)*5,
    					 description: Faker::Lorem.paragraph_by_chars(number: 300, supplemental: false),
    					 location: Faker::Address.city,
      				 price: rand(1..1000),
    					 title: Faker::Book.title,
    					 admin_id: User.all.sample.id)
	puts "Création des évènements -- #{n}"
end

# User.create(email: "alt.x1-0y1szaj@yopmail.com", encrypted_password: "test", description: "hello voici ma description cvcvvvvvvvvvvvvvvvvvv", first_name: "Max", last_name: "val")