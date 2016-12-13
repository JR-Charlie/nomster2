class PlacesController < ApplicationController

  def index
    @places = Place.all
    # perform a paginated query:
    @posts = Place.paginate(:page => params[:page], :per_page => 10)

  end

def new
  @place = Place.new
end

end
