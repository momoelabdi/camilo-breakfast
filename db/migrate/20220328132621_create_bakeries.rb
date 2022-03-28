class CreateBakeries < ActiveRecord::Migration[6.1]
  def change
    create_table :bakeries do |t|
      t.string :name
      t.text :discription
      t.string :street
      t.integer :zip
      t.string :city
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
