json.extract! song, :id, :name, :lyrics, :image_url, :song_source, :created_at, :updated_at
json.url song_url(song, format: :json)
