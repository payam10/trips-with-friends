class SessionsController < ApplicationController
	def users_login
		#check if user email and password is valid
		@user = User.new 
	end
end