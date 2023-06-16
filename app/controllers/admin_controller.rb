class AdminController < ApplicationController
  def order_num
    @order_num = Order.all.length
  end
end
