class BakeriesController < ApplicationController
  def index
    @bakeries = Bakery.all
  end

  def show
    @bakeries = Bakery.find(params[:id])
  end

  private

  # def product_params
  #   params.require(:product).permit(:name, :details, :price, :discription)
  # end
end
