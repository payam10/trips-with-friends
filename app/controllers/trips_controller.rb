class TripsController < ApplicationController
	
	def new
		@trip = Trip.new 
	end

	def create
		@trip = Trip.create(trip_params)
		redirect_to root_path
	end

	def show
		#show trip after it's created 
		# user_trip_path(@trip.id)
	end

	private

	def trip_params
		params.require(:trip).permit(:where, :when, :price_per_person)
	end

end

