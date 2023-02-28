module Edamam
    class Request
        BASE_URL = 'https://api.edamam.com/api/nutrition-data'
        app_id: ENV['EDAMAM_APP_ID'],
        app_key: ENV['EDAMAM_APP_KEY']

        def self.call(http_method, endpoint)
            result = RestClient::Request.execute(
                method: http_method,
                url: "#{BASE_URL}?#{app_id}&#{app_key}#{endpoint}",
                headers: {"content-type" => "application/json;charset=UTF-8"}
            )
        end
    end
end

