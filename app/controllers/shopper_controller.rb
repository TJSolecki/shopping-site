class ShopperController < ApplicationController
  include CurrentCart
  skip_before_action :authorize
  before_action :set_cart
  def index
    @products = Product.order(:name)
    if params[:search]
      @products = Product.where("name LIKE ? OR description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    end
  end

  def show
    begin
      @product = Product.find(params[:id])
    rescue StandardError => _
      redirect_to shopper_url
    end
  end

end
