json.extract! video, :id, :name, :youtube_link, :created_at, :updated_at
json.url video_url(video, format: :json)
