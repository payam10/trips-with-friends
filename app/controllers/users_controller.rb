class UsersController < ApplicationController
	
	def index
		# render homepage
	end

	def new 
		# when a user clicks "sign in", verify his account (not sure if this is right place)
		@user = User.new 
	end

	def create 
		@user = User.create(user_params)
		if @user.save!
			session[:id] = @user.id
			puts '$' * 100
			puts session[:id]
			puts '$' * 100

			redirect_to new_user_trip_path(@user.id) #take user to the 'create a trip' page 
		else
			redirect_to root_path		
		end

	end

	private #why?

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end