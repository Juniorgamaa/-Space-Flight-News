json.extract! article, :id, :title, :imageUrl, :sumary, :publisheAt, :created_at, :updated_at
json.url article_url(article, format: :json)
z