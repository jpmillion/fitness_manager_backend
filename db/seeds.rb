# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

speed_agility = Category.create(name: 'Speed and Agility Training', description: 'Speed is defined as the ability to move the body in one direction as fast as possible. Agility is the ability to accelerate, decelerate, stabilize, and quickly change directions with proper posture.')
strength = Category.create(name: 'Strength Training', description: 'A system of physical conditioning in which muscles are exercised by being worked against an opposing force (as by lifting weights) to increase strength')
plyometric = Category.create(name: 'Plyometric Training', description: 'Plyometrics is a type of exercise training that uses speed and force of different movements to build muscle power.')


plyometric.exercises.create(name: 'Box Jumps', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=26&end36")
plyometric.exercises.create(name: 'Explosive Step Up', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=37&end44")
plyometric.exercises.create(name: 'Box Shuffle', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=45&end51")
plyometric.exercises.create(name: 'Split Squat Jumps', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=52&end60")
plyometric.exercises.create(name: 'Squat Jumps', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=60&end70")
plyometric.exercises.create(name: 'Single Leg DeadLift Hop', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=87&end94")
plyometric.exercises.create(name: 'Skater Hops', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=111&end120")
plyometric.exercises.create(name: 'Burpee', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=122&end132")
plyometric.exercises.create(name: 'Jumping Spider', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=133&end140")
plyometric.exercises.create(name: 'Clapping Pushup', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=141&end148")
plyometric.exercises.create(name: 'Plank Skiers', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=168&end176")
plyometric.exercises.create(name: 'Alternating Rotational Throws', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=185&end195")