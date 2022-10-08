namespace :dev do
  desc "Migrando artigos para db"
  task setup: :environment do
    require 'json'
    require 'rest-client'
    url = 'https://api.spaceflightnewsapi.net/v3/articles'

  response = RestClient.get url
  articles = JSON.parse response.to_str
    

 

 articles.map! do | article |{

  title: article["title"],
  imageUrl: article["imageUrl"],
  sumary: article["summary"],
  publisheAt: article["publishedAt"]

 }
end
     Article.create(articles)
end
end

    

