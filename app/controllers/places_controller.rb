class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def create
    Place.create(:title => params["title"], :photo_url => params["photo_url"], :admission_price => params["price"],:description => params["description"],:place_key =>"2")    
    redirect_to root_url
  end

  # {"id"=>"tt0162222"}
  def show
    @place = Place.find_by(:place_key => params["id"])
  end
  
  def delete
    @place = Place.find_by(:place_key => params["id"]) # Find out what link has been clicked
    @place.delete # Delete the item which has been clicked
    redirect_to root_url # Show home page to verify that the place has been deleted
  end
  
  def new
  end

end
