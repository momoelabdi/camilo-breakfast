class BakeriesController < ApplicationController

   def index
    @bakery = Bakery.all
  end
  
  def show
    @bakery = Bakery.find(params[:id])
  end
 
end
