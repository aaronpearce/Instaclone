class UsersController < ApplicationController
	def show
  		@user = User.find_by(username: params[:username])
  		Rails.logger.info @user.inspect
	end

end
