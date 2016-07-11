class ProfilesController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def new
		@profile = Profile.new
	end

	def create
		@user = current_user.profile.new(profile_params)
	end

	def update
	
	end

private 

	def profile_params
		params.require(:profile).permit(:birthday, :location, :gender, :occupation)
	end

end
