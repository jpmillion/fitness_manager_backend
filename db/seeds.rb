# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

speed_agility = Category.create(name: 'Speed and Agility Training', description: 'Speed is defined as the ability to move the body in one direction as fast as possible. Agility is the ability to accelerate, decelerate, stabilize, and quickly change directions with proper posture.')
strength = Category.create(name: 'Strength Training', description: 'A system of physical conditioning in which muscles are exercised by being worked against an opposing force (as by lifting weights) to increase strength')
plyometric = Category.create(name: 'Plyometric Training', description: 'Plyometrics is a type of exercise training that uses speed and force of different movements to build muscle power.')