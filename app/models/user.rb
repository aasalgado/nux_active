class User < ApplicationRecord
  has_many :orders
  
  has_secure_password 

  validates :email, presence: true, uniqueness: true

  def cart
    order = Order.find_by(user: self, is_cart: true)
    unless order
        order = Order.create(user: self)
    end
    order
  end

end
