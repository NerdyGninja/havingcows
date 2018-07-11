json.extract! music, :id, :song_name, :lyrics, :image_url, :spotify_url, :created_at, :updated_at
json.url music_url(music, format: :json)
