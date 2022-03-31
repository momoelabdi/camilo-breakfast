class BakeriesController < ApplicationController
  def index
    if params["query"].present?
      @bakeries = Bakery.where("name ILIKE ?", "%#{params["query"]}%")
    else
      @bakeries = Bakery.all
    end
  end

  def show
    @bakery = Bakery.find(params[:id])
  end
end
