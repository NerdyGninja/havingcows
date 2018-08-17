json.extract! merchandise, :id, :name, :price, :description, :image_url, :colour, :created_at, :updated_at
json.url merchandise_url(merchandise, format: :json)
