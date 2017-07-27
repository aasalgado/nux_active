class Order < ApplicationRecord
    belongs_to :user
    has_many :order_items
    has_many :products, through: :order_items 

    def add_product(product_id)
      item = OrderItem.find_by(order: self, product_id: product_id)
      if item
        item.quantity = item.quantity + 1
        item.save
      else
        item = OrderItem.create(order: self, product_id: product_id, quantity: 1)
      end
      item
    end

end
