class Product < ApplicationRecord
    has_many :order_items, dependent: :destroy
    has_many :orders, through: :order_item

    validates :name, :img_url, :price, presence: true


end
