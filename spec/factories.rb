FactoryGirl.define do  factory :school_class do
    level 1
indication "MyString"
  end

  factory :student do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end

  factory :school_class do
    level { Faker::Name.first_name }
    indication { Faker::Name.last_name }
  end
end