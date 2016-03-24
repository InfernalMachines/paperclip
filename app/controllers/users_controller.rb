class UsersController < ApplicationController

	def create
		puts "PARAMS ARE: #{params}"
		@user = User.create(user_params)
		redirect_to root_path
	end

	private

	def user_params
		params.require(:user).permit(:pictures)
	end
end
