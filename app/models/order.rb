class Order < ApplicationRecord
  has_many :lineitems, dependent: :destroy

  validates :name, :address, :email, presence: true
  PAYMENT_TYPES = ["Check", "Credit Card", "Venmo", "Paypal", "CashApp"]
  validates :paytype, inclusion: PAYMENT_TYPES

  def update_lineitems_from_cart(cart_obj)
    # self here is going to be the current order since we are in the order class
    # doing a save so that the id is set
    self.save
    cart_obj.lineitems.each do |item|
      item.cart_id = nil
      item.order_id = self.id
      item.save
    end
  end

  def total_price
    self.lineitems.to_a.sum {|item| item.product.price * item.quantity}
  end
end
