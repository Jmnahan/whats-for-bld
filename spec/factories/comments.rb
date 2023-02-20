FactoryBot.define do
  factory :comment do
    user { association :user }
    recipe { association :recipe }
    text { "testing dish_name" }
  end
end
