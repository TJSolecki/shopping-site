class Cart < ApplicationRecord
  has_many :lineitems, dependent: :destroy

  #self is current cart
  def add_item(product_id)
    current_item = self.lineitems.find_by(product_id: product_id, cart_id: @cart.id)
    if current_item
      current_item.quantity += 1
    else
      currernt_item = self.lineitems.build(product_id: product_id, cart_id: @cart.id)
    end
    current_item
  end

  def total_price
    self.lineitems.to_a.sum {|item| item.price}
  end
end
