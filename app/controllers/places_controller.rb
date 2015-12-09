class PlacesController < ApplicationController

  def index
    @places = Place.page(params[:page]).per(4)
  end
  
  def new
    @place = Place.new
  end
end
