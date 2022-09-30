require_relative 'request_space_flight_news_api'

module WriteInDatabase
    def self.write_articles
        articles = RequestSpaceFlightNewsApi::call

        articles.map! do |article|
            {
                id: article["id"],
                featured: article["featured"], 
                title: article["title"], 
                url: article["url"], 
                imageUrl: article["imageUrl"], 
                newsSite: article["newsSite"], 
                summary: article["summary"], 
                publishedAt: article["publishedAt"],
                launches: article["launches"].map do |launch|
                    l = Launch.find_or_create_by(id: launch["id"])
                    l.provider = launch["provider"]
                    l
                end,
                events: article["events"].map do |event|
                    l = Event.find_or_create_by(id: event["id"])
                    l.provider = event["provider"]
                    l
                end
            }
        end

        Article.create(articles)
    end
end