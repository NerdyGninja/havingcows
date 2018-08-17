class SimplePagesController < ApplicationController

	def landing_page
		@featured_songs = Song.limit(6)
	end

end