class ChangeLineItemsCartIdNullable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :lineitems, :cart_id, true
  end
end
