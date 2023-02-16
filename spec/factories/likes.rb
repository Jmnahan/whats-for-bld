FactoryBot.define do
  factory :like do
    user { association :user }
    recipe { association :recipe }
  end
end
