FactoryBot.define do
  sequence :email do |n|
    "user#{n}@example"
  end

  sequence :username do |n|
    "username#{n}"
  end

  factory :user do
    email { generate :email }
    username { generate :username }
    password { 'password' }
    after(:build)   { |u| u.skip_confirmation_notification! }
    after(:create)  { |u| u.confirm }
  end
  
end
