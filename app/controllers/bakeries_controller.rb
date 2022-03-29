class BakeriesController < ApplicationController

  def show
    @bakery = Bakery.find(params[:id])
  end
end
