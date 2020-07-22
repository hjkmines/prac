# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Power.destroy_all 
Hero.destroy_all 

hero1 = Hero.create(name: "Kent Clark", super_name: "Superman")
hero2 = Hero.create(name: "Gal Gadot", super_name: "Wonder Woman")
hero3 = Hero.create(name: "Bruce Wayne", super_name: "Batman")
hero4 = Hero.create(name: "Peter Parker", super_name: "Spider-Man")

Power.create(name: "Flying", description: "Able to Fly", hero_id: hero1.id)
Power.create(name: "Flying", description: "Able to Fly", hero_id: hero2.id)
Power.create(name: "Night Vision", description: "Able to see at night", hero_id: hero1.id)
Power.create(name: "Invisible", description: "Able to be invisible", hero_id: hero3.id)