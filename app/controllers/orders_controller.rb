class OrdersController < ApplicationController
  def my_orders
    @products = current_user.current_order.products
    @total_price = @products.sum(&:price)
    # raise
  end

  # def products
  #   @products = Product.all
  # end

  def add_to_basket
    @product = Product.find(params[:product_id])
    @order = Order.find_or_create_by(user: current_user, status: :pending, bakery: @product.bakery)
    @basket = Basket.create(order: @order, product: @product)
      redirect_to my_orders_path
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :product_id, :bakery_id)
  end
end
