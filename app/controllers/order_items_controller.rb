class OrderItemsController < ApplicationController
    
    def create
        current_user.cart.add_product(params[:product_id])
        redirect_to products_path
    end

    def update 
        current_user.cart.add(params[:product_id])
        redirect_to products_path
    end

    def destroy
        current_user.card.remove_product(params[:product_id])
        redirect_to products_path
    end

    def show
        redirect_to products_path(current_user.cart)
    end

    def increase
        item = OrderItem.find(params[:id])
        item.quantity += 1
        item.save
        redirect_to order_path(item.order)
    end

    def decrease
        item = OrderItem.find(params[:id])
        if item.quantity == 1
            item.destroy
        else 
            item.quantity -= 1
            item.save
        end
        redirect_to order_path(current_user.cart)
    end






end

