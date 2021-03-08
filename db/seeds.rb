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


plyometric.exercises.create(name: 'Box Jumps', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=26&end=36")
plyometric.exercises.create(name: 'Explosive Step Up', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=37&end=44")
plyometric.exercises.create(name: 'Box Shuffle', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=45&end=51")
plyometric.exercises.create(name: 'Split Squat Jumps', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=52&end=60")
plyometric.exercises.create(name: 'Squat Jumps', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=60&end=70")
plyometric.exercises.create(name: 'Single Leg DeadLift Hop', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=87&end=94")
plyometric.exercises.create(name: 'Skater Hops', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=111&end=120")
plyometric.exercises.create(name: 'Burpee', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=122&end=132")
plyometric.exercises.create(name: 'Jumping Spider', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=133&end=140")
plyometric.exercises.create(name: 'Clapping Pushup', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=141&end=148")
plyometric.exercises.create(name: 'Plank Skiers', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=168&end=176")
plyometric.exercises.create(name: 'Alternating Rotational Throws', video_url: "https://www.youtube.com/embed/dvggf9hPwtM?start=185&end=195")


speed_agility.exercises.create(name: 'Sprinting Walk', video_url: "https://www.youtube.com/embed/xXVjydEkwk4?start=197&end=207")
speed_agility.exercises.create(name: 'Skips', video_url: "https://www.youtube.com/embed/xXVjydEkwk4?start=223&end=238")
speed_agility.exercises.create(name: '212s', video_url: "https://www.youtube.com/embed/xXVjydEkwk4?start=244&end=262")
speed_agility.exercises.create(name: "Single Leg 'A' Run", video_url: "https://www.youtube.com/embed/xXVjydEkwk4?start=269&end=283")
speed_agility.exercises.create(name: "High Knees", video_url: "https://www.youtube.com/embed/xXVjydEkwk4?start=303&end=316")
speed_agility.exercises.create(name: "Double Leg Hop Skip", video_url: "https://www.youtube.com/embed/xXVjydEkwk4?start=326&end=343")
speed_agility.exercises.create(name: "Jog with Single Leg Rotation", video_url: "https://www.youtube.com/embed/xXVjydEkwk4?start=363&end=374")
speed_agility.exercises.create(name: "5-10-5 Pro Agility Drill", video_url: "https://www.youtube.com/embed/_oJRFrj_gVc?start=43&end=51")
speed_agility.exercises.create(name: "X Drill", video_url: "https://www.youtube.com/embed/_oJRFrj_gVc?start=58&end=66")
speed_agility.exercises.create(name: "3 Cone L Drill", video_url: "https://www.youtube.com/embed/_oJRFrj_gVc?start=81&end=92")
speed_agility.exercises.create(name: "W Drill", video_url: "https://www.youtube.com/embed/_oJRFrj_gVc?start=109&end=123")
speed_agility.exercises.create(name: "Slalon Weave Drill", video_url: "https://www.youtube.com/embed/_oJRFrj_gVc?start=130&end=149 ")

strength.exercises.create(name: 'Military Press', video_url: "https://www.youtube.com/embed/D3vO_ogtpUI?start=25&end=45")
strength.exercises.create(name: 'Corner Row', video_url: "https://www.youtube.com/embed/D3vO_ogtpUI?start=65&end=77")
strength.exercises.create(name: 'Deadlift', video_url: "https://www.youtube.com/embed/D3vO_ogtpUI?start=110&end=122")
strength.exercises.create(name: 'Bent Over Row', video_url: "https://www.youtube.com/embed/D3vO_ogtpUI?start=136&end=155")
strength.exercises.create(name: 'Incline Dumbell Press', video_url: "https://www.youtube.com/embed/D3vO_ogtpUI?start=180&end=199")
strength.exercises.create(name: 'Flat Dumbell Press', video_url: "https://www.youtube.com/embed/D3vO_ogtpUI?start=219&end=245")
strength.exercises.create(name: 'Front Squat', video_url: "https://www.youtube.com/embed/D3vO_ogtpUI?start=275&end=295")
strength.exercises.create(name: 'Bench Press', video_url: "https://www.youtube.com/embed/D3vO_ogtpUI?start=319&end=340")
strength.exercises.create(name: 'Squat', video_url: "https://www.youtube.com/embed/D3vO_ogtpUI?start=406&end=426")
strength.exercises.create(name: 'Leg Press', video_url: "https://www.youtube.com/embed/D3vO_ogtpUI?start=493&end=518")

