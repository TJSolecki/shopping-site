class Product < ApplicationRecord
  validates :name, :description, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 } 
  validates :name, uniqueness: true
  validates :image, allow_blank: true, format: { with: %r{.*\.(jpg|png|gif)\Z}, message: "Must be a .jpg, .png, or .gif file" }

  has_many :lineitems, dependent: :destroy
end
