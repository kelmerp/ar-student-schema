require_relative '../app/models/teacher'
require 'faker'

module TeachersImporter
  def self.import
    9.times do |teacher|
      student = Teacher.create!(name: Faker::Name.name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.phone_number)
    end
  end
end
