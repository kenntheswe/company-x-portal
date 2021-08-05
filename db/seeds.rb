# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clearing database..."
User.destroy_all

puts "Start seeding..."

user1 = User.create(email: 'abbycollins@company-x.com', password: '123456', name: 'Abby Collins', title: 'Front End Developer', manager: 'Bruce Johnson')
user2 = User.create(email: 'michaeldoe@company-x.com', password: '123456', name: 'Michael Doe', title: 'Back End Developer', manager: 'Clark Chen')
user3 = User.create(email: 'dianalittle@company-x.com', password: '123456', name: 'Diana Little', title: 'Project Manager', manager: 'Emma Fisher')
user4 = User.create(email: 'frankiehall@company-x.com', password: '123456', name: 'Frankie Hall', title: 'Web Designer', manager: 'Gina Ong')
user5 = User.create(email: 'lilyhong@company-x.com', password: '123456', name: 'Lily Hong', title: 'Marketing Executive', manager: 'Nick Parker')
user6 = User.create(email: 'peterturner@company-x.com', password: '123456', name: 'Peter Turner', title: 'Full Stack Developer', manager: 'Sakura Sato')
user7 = User.create(email: 'kennvungan@company-x.com', password: '123456', name: 'Kenn Vun Gan', title: 'Full Stack Developer', manager: 'Tony Lim')

puts "Created #{User.count} users"
puts "Done seeding!"