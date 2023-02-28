module Edamam
    class Client
        def self.analyze_nutrition(ingredient)
            response = Request.call('get', "&nutrition-type=cooking&#{ingredient}" )
        end
    end
end
