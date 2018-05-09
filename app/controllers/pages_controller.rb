class PagesController < ApplicationController
	before_action :authenticate_user!
	def index
		@ok = "hola"
	end
end
