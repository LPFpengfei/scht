class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :originprice
      t.string :price
      t.string :description
      t.string :quantity
      t.string :productcategoryid

      t.timestamps
    end
  end
end
