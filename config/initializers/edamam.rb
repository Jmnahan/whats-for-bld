require 'rest-client'
require 'json'



module Edamam
  class Client
    def self.analyze_nutrition(ingredient)
      response = RestClient.get('https://api.edamam.com/api/nutrition-data', params: {
        app_id: 'c66d2e3b',
        app_key: '16685105f55abee9bd0a865c3499c86b',
        ingr: ingredient
      })
      JSON.parse(response.body)
    end
  end
end