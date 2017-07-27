class Order < ApplicationRecord
    has_many :order_items
    has_many :products, through: order_items 

    def add_product(product_id)
    product = Product.find(product_id)
    if product.quantity <= 0 then return nil end
    product.quantity = product.quantity - 1
    product.save

   item = OrderItem.find_by(order: self, product: product)
    if item
      item.quantity = item.quantity + 1
      item.save
    else
      item = OrderItem.create(order: self, product: product, quantity: 1)
    end
    item
    end

    def show
        @orders = Order.all
    end


end
