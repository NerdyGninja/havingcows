json.extract! event, :id, :event_name, :date, :venue, :entrance, :tickets_available_at, :created_at, :updated_at
json.url event_url(event, format: :json)
