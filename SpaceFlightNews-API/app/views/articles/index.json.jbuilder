json.articles @articles do |article|
  json.featured article.featured
  json.title article.title
  json.url article.url
  json.imageUrl article.imageUrl
  json.newsSite article.newsSite
  json.summary article.summary
  json.launches article.launches do |launch|
    json.provider launch.provider
  end
  json.events article.events do |event|
    json.provider event.provider
  end
end