json.extract! article, :id, :author, :body, :price, :isbn, :title, :created_at, :updated_at
json.url article_url(article, format: :json)
