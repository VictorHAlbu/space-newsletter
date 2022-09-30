require 'rest-client'
require 'json'

module RequestSpaceFlightNewsApi
    def self.call
        begin
            base_url = "https://api.spaceflightnewsapi.net/v3/articles/"
            response = RestClient.get base_url
            JSON.parse(response.body)
        rescue RestClient::ExceptionWithResponse => e
            e.response
        end
    end
end