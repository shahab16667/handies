# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# create 5 users
Handyman.destroy_all
Company.destroy_all
User.destroy_all
shahab = User.create!(first_name: 'Shahab', last_name: 'Jahangiri',email: 'shahab.j3@gmail.com', password: '1234567')
nicho = User.create!(first_name: 'Nicho', last_name: 'Proto',email: 'nicho@gmail.com', password: '1234567')
sy = User.create!(first_name: 'Sy', last_name: 'Rashid',email: 'sy@gmail.com', password: '1234567')
daniel = User.create!(first_name: 'Daniel', last_name: 'Proto',email: 'daniel@gmail.com', password: '1234567')
henry = User.create!(first_name: 'Henry', last_name: 'Lay',email: 'henry@gmail.com', password: '1234567')
# create categories
Category.destroy_all
kitchen_install = Category.create!(title: "Kitchen Installation Services")
painting = Category.create!(title: "Painting Services")
roofing = Category.create!(title: "Roofing Services")
artwork =  Category.create!(title: "Art work Services")
dj =  Category.create!(title: "find Dj near Services")
# create companies is one of the users you

handymanguys = Company.create!(name: "HandymanGuys Pty Ltd", abn: "54 634 046 138", description: "Handyman Services in Beautiful Melbourne", owner: shahab)
artbybrush = Company.create!(name: "Art By Brush Pty Ltd", abn: "54 645 067 138", description: "Beautiful arts for sale", owner: daniel)
herodjs = Company.create!(name: "Hero Djs Pty Ltd", abn: "54 645 045 788", description: "find nearest Dj ", owner: henry)
# create handyman for companies each handyman belogs to a company and category
ben = Handyman.create!(name: "Ben Jahan", description: "Handyman Services", company: shahab, category: kitchen_install)
daniel = Handyman.create!(name: "Daniel ", description: "Artist", company: artbybrush, category: artwork)
henry = Handyman.create!(name: "Henry ", description: "Dj finder", company: artbybrush, category: artwork)
