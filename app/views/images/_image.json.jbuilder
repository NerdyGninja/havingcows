json.extract! image, :id, :image_url, :image_name, :image_description, :created_at, :updated_at
json.url image_url(image, format: :json)
