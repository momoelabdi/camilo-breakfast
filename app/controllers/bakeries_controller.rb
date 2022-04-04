class BakeriesController < ApplicationController
  def index
    @bakeries = Bakery.all
    @markers = @bakeries.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @bakeries = Bakery.find(params[:id])
  end

  private

  # def product_params
  #   params.require(:product).permit(:name, :details, :price, :discription, :photo)
  # end
end
