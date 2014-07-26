class SessionsController < ApplicationController
	def users_login
		#check if user email and password is valid
		puts "session log in" * 5 
		@user = User.new 
	end
end