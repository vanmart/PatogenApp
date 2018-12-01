json.extract! importantnews, :id, :name, :description, :created_at, :updated_at
json.url importantnews_url(importantnews, format: :json)
