class OrdersController < ApplicationController

    def index
        @orders = Order.all
    end

    def add_to_order
    current_order.add_item(params[:id])
    end







end

