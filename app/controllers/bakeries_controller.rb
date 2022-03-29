class BakeriesController < ApplicationConroller

  def index
    @restaurant = Restaurant.all
  end
end
