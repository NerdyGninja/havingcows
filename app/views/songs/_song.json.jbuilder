json.extract! song, :id, :name, :image, :spotify_link, :lyrics, :created_at, :updated_at
json.url song_url(song, format: :json)
