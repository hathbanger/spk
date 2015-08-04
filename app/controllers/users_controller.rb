class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end
	def create
	end
	def list
		@users = User.all
		@tricks = Trick.all.order("created_at DESC")
	end
	def follow
	  @user = User.find(params[:id])
	  current_user.follow(@user)
	  redirect_to :back
	end	
	def unfollow
	  @user = User.find(params[:id])
	  current_user.stop_following(@user)
	  redirect_to :back
	end
	
	private
	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def user_params
	  params.require(:user).permit(:avatar, :tricks)
	end
end
