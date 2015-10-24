# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(user_type: 'doctor', email: 'doctor1@example.com', password: '12345678')
Doctor.create(user_id: user1.id, title: 'Dr', first_name: 'Doctor', last_name:'Who', post_nominals: 'MD')

user2 = User.create(user_type: 'doctor', email: 'doctor2@example.com', password: '12345678')
Doctor.create(user_id: user2.id, title: 'Dr', first_name: 'Doctor', last_name:'Who', post_nominals: 'MD')

user3 = User.create(user_type: 'doctor', email: 'doctor3@example.com', password: '12345678')
Doctor.create(user_id: user3.id, title: 'Dr', first_name: 'Doctor', last_name:'Who', post_nominals: 'MD')

user4 = User.create(user_type: 'doctor', email: 'doctor4@example.com', password: '12345678')
Doctor.create(user_id: user4.id, title: 'Dr', first_name: 'Doctor', last_name:'Who', post_nominals: 'MD')

user5 = User.create(user_type: "patient", email: "example@example.com", password: '12345678')
Patient.create(user_id: user5.id, first_name: 'John', last_name: 'Montague', phone: '0987654321', street_address:'1 Sandwich Street', suburb: 'Kamerunga', state: 'QLD', postcode: '4870', medicare_number: '12345678')
