FactoryGirl.define do  factory :mark do
    grade ""
comment "MyString"
subject_id 1
student_id 1
  end
  factory :subject do
    name "MyString"
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