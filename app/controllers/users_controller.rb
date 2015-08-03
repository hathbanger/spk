class UsersController < ApplicationController
	def show
		@user = User.all
	end
	def create
 	 	@user = User.create( user_params )
	end
	def list
		@users = User.all
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def user_params
	  params.require(:user).permit(:avatar)
	end
end
