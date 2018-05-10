class PagesController < ApplicationController

	before_action :authenticate_user!

	def index

		# Current user data
		@current_user = current_user.id
		@user_salt = User.find(@current_user).salt

		# Pass current user data to js
		gon.current_user = @current_user
		gon.user_salt = @user_salt

		#@user_clickDamage = User.find(1).salt
		#@user_clickDamage = User.find(1).salt
	end

	def set_stats
		User.find(params[:current_user]).update_attributes(:salt => params[:salt])
	end

	def get_stats
		User.find_by(user: params[:user])
	end

end
