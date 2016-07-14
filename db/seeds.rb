# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

owner = User.create!(first_name: "Enakshi", email: "ena@gmail.com")
project = Project.create!(name: "Something", owner: owner)
backer = User.create!(first_name: "Seila", email: "seila@gmail.com")
donation = Donation.create!(amount: 100, backer: backer, project: project)
