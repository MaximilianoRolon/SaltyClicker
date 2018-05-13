class PagesController < ApplicationController

	before_action :authenticate_user!

	def index

		# Current user data
		@current_user = current_user.id
		@user_salt = User.find(@current_user).salt
		@user_salt_per_second = User.find(@current_user).salt_per_second
		@user_click_damage = User.find(@current_user).click_damage
		if @user_click_damage != nil and @user_click_damage != 0
		else
			@user_click_damage = 1
		end


		# Pass current user data to js
		gon.current_user = @current_user
		gon.user_salt = @user_salt
		gon.user_salt_per_second = @user_salt_per_second
		gon.user_click_damage = @user_click_damage

		#@user_clickDamage = User.find(1).salt
		#@user_clickDamage = User.find(1).salt
	end

	def leaderboard
		@users = User.all.order("salt DESC")
	end

	def set_stats
		User.find(params[:current_user]).update_attributes(:salt => params[:salt])
		User.find(params[:current_user]).update_attributes(:salt_per_second => params[:saltPerSecond])
		User.find(params[:current_user]).update_attributes(:click_damage => params[:clickDamage])
	end

	def get_stats
		User.find_by(user: params[:user])
	end

end