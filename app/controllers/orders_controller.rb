class OrdersController < ApplicationController

    def index
        @orders = current_user.orders.order(created_at: :desc)
    end

    def show
        @order = Order.find(params[:id])
    end

    def checkout
        order = current_user.cart
        order.is_cart = false
        order.save
        redirect_to order_path(order)
    end

end

