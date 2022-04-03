class RemoveProductFromOrder < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :product_id
    add_column :orders, :status, :integer
  end
end
