require 'faker'


10.times do
  city = City.create(name: Faker::Address.city)
end

10.times do
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: Faker::Number.number(5), city_id: rand((City.first.id)..(City.last.id)))
end

10.times do
  specialty = Specialty.create(name: Faker::Superhero.name)
end

15.times do
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand((City.first.id)..(City.last.id)))
end

15.times do
  appointment = Appointment.create(date: "2018-07-26 11:00:00".to_datetime, doctor_id: rand((Doctor.first.id)..(Doctor.last.id)), patient_id: rand((Patient.first.id)..(Patient.last.id)), city_id: rand((City.first.id)..(City.last.id)))
end
