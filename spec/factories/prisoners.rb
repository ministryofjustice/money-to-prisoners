FactoryGirl.define do

  factory :prisoner do
    prisoner_name { Faker::Name.name }
    sequence(:prisoner_number) { |n| "A#{sprintf('%04d', n)}BC" }
    prisoner_dob { Faker::Date.between(30.years.ago, 20.years.ago) }
  end

end
