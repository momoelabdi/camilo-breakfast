class AddCoordinatesToBakeries < ActiveRecord::Migration[6.1]
  def change
    add_column :bakeries, :address, :string
  end
end
