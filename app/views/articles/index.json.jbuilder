json.array! @articles, partial: "articles/article", as: :article

require 'json'

require 'rest-client'

url = 'https://api.spaceflightnewsapi.net/v3/articles'

response = RestClient.get url
result = JSON.parse response.to_str


puts result