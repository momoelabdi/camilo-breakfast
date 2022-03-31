class BakeriesController < ApplicationController
  def index
    @bakeries = Bakery.all
    # @markers = @bakery.geocoded.map do |bakery|
    #   {
    #     lat: bakery.latitude,
    #     lng: bakery.longitude,
    #     info_window: render_to_string(partial: "info_window", locals: { bakery: bakery }),
    #     image_url: helpers.asset_url("map.png")

    #   }
    # end
  end

  def show
    @bakery = Bakery.find(params[:id])
  end
end
