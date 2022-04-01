class OrdersController < ApplicationController

  def my_orders
    @order = Order.all
  end

  def new
    @bakery = Bakery.find(params[:bakery_id])
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @bakery = Bakery.find(params[:bakery_id])
    @order.bakery = @bakery
    if @bakery.save
    redirect_to bakery_path(@bakery)
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :product_id, :bakery_id)
  end
end
