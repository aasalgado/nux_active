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

    def remove_item product_id, order_items
        order_items.delete(product_id)
    end



end

