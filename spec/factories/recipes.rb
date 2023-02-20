FactoryBot.define do
  factory :recipe do
    user { association :user }
    dish_name { "testing dish_name" }
    ingredient { "jahsd ajkshd asdkljasd whasd dasdawafsd"}
    direction { "dasjdahsd awuhea sdjhaw djshda sjdhw efagdfoif sjdnda dasdasd" }
    suggestion { "dajhsd ajshe asdhc kajsd awklei dausd jhdas dasd dasd" }
  end
end
