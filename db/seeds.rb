# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

num_one = Beach.create(name: "Railay Beach", country: "Thailand")

num_two = Beach.create(name: "Whitehaven Beach", country: "Australia")

num_three = Beach.create(name: "Ruby Beach", country: "USA")

num_four = Beach.create(name: "Monterosso Al Mare", country: "Italy")

num_five = Beach.create(name: "Tunnels Beach", country: "USA")

num_six = Beach.create(name: "Durdle Door", country: "England")

num_seven = Beach.create(name: "Tulum", country: "Mexico")

num_one.comments.build(
    content: "So beautiful"
)

num_two.comments.build(
    content: "Wish I could go"
)

num_three.comments.build(
    content: "Take me with you"
)

num_three.comments.build(
    content: "Of course lol"
)

num_four.comments.build(
    content: "Best beach ever!!!"
)

num_one.save 
num_two.save 
num_three.save 
num_four.save 



