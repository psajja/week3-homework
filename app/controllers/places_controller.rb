class PlacesController < ApplicationController

  #Home Page
  def index
    @places = Place.all
  end

  
  def create
    Place.create(:title => params["title"], :photo_url => params["photo_url"], :admission_price => params["price"],:description => params["description"])    
    redirect_to root_url
  end

  # Show the details of one place
  def show
    @place = Place.find_by(:id=> params["id"])
  end
  
  # Delete a place from the database
  def delete
    @place = Place.find_by(:id => params["id"]) # Find out what link has been clicked
    @place.delete # Delete the item which has been clicked
    redirect_to root_url # Show home page to verify that the place has been deleted
  end
  
  ## Create a new place along with its description
  def new
  end
  
  
  #Edit an exisiting place
  def edit
    @place = Place.find_by(:id => params["id"]) 
  end
  
  #Update the details of an existing place
  def update
    @place = Place.find_by(:id => params["id"])
    @place.title = params["title"]
    @place.photo_url = params["photo_url"]
    @place.admission_price = params["price"]
    @place.description = params["description"]
    @place.save
    redirect_to "/places/#{@place.id}"
  end
  
  

end
