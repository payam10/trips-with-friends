class TripsController < ApplicationController
	before_filter :find_user
	
	def new
		@trip = Trip.new 
	end

	def create
		@trip = Trip.create(trip_params)

		redirect_to user_trip_path(@user.id, @trip.id) 
	end

	def show
		@trip = Trip.find(params[:id])
	end

	private

	def trip_params
		params.require(:trip).permit(:where, :when, :price_per_person)
	end

	def find_user
		@user = User.find(session[:id])
	end

end

