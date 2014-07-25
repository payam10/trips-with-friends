class TripsController < ApplicationController
	
	def new
		@user = User.find(1) #change to reflect whoever is signed in using sessions
		@trip = Trip.new 
	end

	def create
		@trip = Trip.create(trip_params)
		redirect_to root_path
	end

	private

	def trip_params
		params.require(:trip).permit(:where, :when, :price_per_person)
	end

end

