class SimplePagesController < ApplicationController

	def landing_page
		@featured_song = Song.limit(6)
	end

end