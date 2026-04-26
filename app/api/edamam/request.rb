module Edamam
    class Request
        BASE_URL = 'https://api.edamam.com/api/nutrition-data'
        APP_ID  =  ENV['EDAMAM_APP_ID'],
        APP_KEY = ENV['EDAMAM_APP_KEY']

        def self.call(http_method, endpoint)
            result = RestClient::Request.execute(
                method: http_method,
                url: "#{BASE_URL}?#{APP_ID}&#{APP_KEY}#{endpoint}",
                headers: {"content-type" => "application/json;charset=UTF-8"}
            )
        end
    end
end

