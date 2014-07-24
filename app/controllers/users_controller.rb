class UsersController < ApplicationController
	
	def index
		# render homepage
	end

	def new 
		# when a user clicks "sign in", verify his account (not sure if this is right place)
		# when a user clicks "create account", show form
		@user = User.new 
	end


end