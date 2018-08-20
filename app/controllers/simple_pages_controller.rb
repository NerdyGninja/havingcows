class SimplePagesController < ApplicationController

	def landing_page
		@featured_songs = Song.limit(6)
		@featured_videos = Video.all
		@featured_events = Event.limit(6)
		@featured_merchandises = Merchandise.limit(4)
	end

	def thank_you
		@name = params[:name]
		@email = params[:email]
		@message = params[:message]
		UserMailer.contact_form(@email, @name, @message).deliver_now
	end

end