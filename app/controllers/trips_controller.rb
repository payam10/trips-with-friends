class TripsController < ApplicationController
	
	def new
		@user = User.find(session[:id]) #change to reflect whoever is signed in using sessions
		@trip = Trip.new 
	end

	def create
		@trip = Trip.create(trip_params)
		# session[:trip_id] = @trip.id
		@user = User.find(session[:id]) #why do I have to restate this? 
		redirect_to user_trip_path(@user.id, @trip.id) 
	end

	def show
	end

	private

	def trip_params
		params.require(:trip).permit(:where, :when, :price_per_person)
	end

end

