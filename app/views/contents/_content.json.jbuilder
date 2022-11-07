json.extract! content, :id, :content, :blog_id, :page_id, :created_at, :updated_at
json.url content_url(content, format: :json)
json.content content.content.to_s
