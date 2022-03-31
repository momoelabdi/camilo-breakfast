class BakeriesController < ApplicationController
  def index
    @bakery = Bakery.all
    @markers = @bakery.geocoded.map do |bakery|
      {
        lat: bakery.latitude,
        lng: bakery.longitude
      }
    end
  end

  def show
    @bakery = Bakery.find(params[:id])
  end

  # private

  # def product_params
  #   params.require(:product).permit(:name, :details, :price, :discription)
  # end
end
