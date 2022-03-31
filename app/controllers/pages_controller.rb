class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @bakeries = Bakery.all
    @markers = @bakeries.geocoded.map do |bakery|
      {
        lat: bakery.latitude,
        lng: bakery.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bakery: bakery }),
        image_url: helpers.asset_url("map.png")
      }
    end
  end
end
