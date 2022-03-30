class BakeriesController < ApplicationController

  def index
    @bakery = Bakery.all
  end
end
