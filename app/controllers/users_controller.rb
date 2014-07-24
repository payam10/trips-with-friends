class UsersController < ApplicationController
	
	def index
		# render homepage
	end

	def new 
		# when a user clicks "sign in", verify his account (not sure if this is right place)
		# when a user clicks "create account", show form
		@user = User.new 
	end

	def create 
		# puts '$' * 100 
		# puts "Submit button is communicating with create method in user controller"
		# puts "PARAMS: #{params.inspect}"
		# puts '$' * 100
		puts '$' * 100
		@user = User.create(user_params)
		puts @user
		puts '$' * 100

		redirect_to root_path
	end

	private #why?

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end