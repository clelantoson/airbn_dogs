# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
  # Créer des Cities
  # 50.times do
  #   city = City.create!(city_name: Faker::Address.city)
  #   puts "City : #{city.city_name} created"
  # end
  # Créer des Dogsitters et des Dogs
  # 200.times do
  #   dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name,city:City.all.sample)
  #   dog = Dog.create!(dog_name: Faker::Name.first_name,city:City.all.sample)
  #   puts "Dogsitter : #{dogsitter.first_name} created"
  #   puts "Dog : #{dog.dog_name} created"
  # end
  # Créer des Strolls
  n = 0
  100.times do
    random_dogsitter = Dogsitter.all.sample
    stroll = Stroll.create!(dogsitter:random_dogsitter,dog:Dog.all.sample,date:Faker::Time.forward(days: 5,  period: :evening, format: :long),city:random_dogsitter.city)
    n = n+1
    puts "Stroll #{n} created"
  end

  n = 0
  100.times do
    random_doc = Doctor.all.sample
    appointment = Appointment.create!(doctor:random_doc,patient:Patient.all.sample,date:Faker::Time.forward(days: 5,  period: :evening, format: :long),city:random_doc.city)
    n = n+1
    puts "Appointment #{n} created"
  end