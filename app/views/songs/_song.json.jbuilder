json.extract! song, :id, :song_name, :lyrics, :image_url, :sporify_url, :created_at, :updated_at
json.url song_url(song, format: :json)
