class Order < ApplicationRecord

    has_many :products


    def add_item(name)
        item = items.where('name = ?', name).first
    if item
        product.quantity + 1
        save
    else
        product = Product.find(name)
    end
    save
    end

    def total_price
    end

    def show
        @orders = Order.all
    end

end
