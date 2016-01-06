FactoryGirl.define do

  factory :mark do
    grade (1..6).to_a.sample
    comment "Sample Comment"
  end

  factory :subject do
    name "ExampleName"
  end

  factory :student do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end

  factory :school_class do
    level (1..3).to_a.sample
    indication ('A'..'Z').to_a.sample
  end
end