class AddQuantityToLineitems < ActiveRecord::Migration[7.0]
  def change
    add_column :lineitems, :quantity, :integer, default: 1
  end
end
