FactoryGirl.define do
  factory :admin, class: User do
    email "admin@gmail.com"
    password "password"
    association :profile, factory: :admin_profile
  end

  factory :student, class: User do
    email "student@gmail.com"
    password "password"
    association :profile, factory: :student_profile
  end

  factory :admin_profile do
    first_name "John"
    last_name "Doe"
  end

  factory :student_profile do
    first_name "Clark"
    middle_name "Joseph"
    last_name "Kent"
  end
end