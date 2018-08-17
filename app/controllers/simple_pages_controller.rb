class SimplePagesController < ApplicationController

	def landing_page
		@featured_songs = Song.limit(6)
		@featured_videos = Video.limit(6)
		@featured_events = Event.limit(6)
	end

end