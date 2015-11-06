class PlacesController < ApplicationController
	def index
		#@places = Place.all
		@places = Place.page(params[:page])
	end
end
