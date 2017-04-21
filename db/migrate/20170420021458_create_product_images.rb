class CreateProductImages < ActiveRecord::Migration[5.0]
  def change
    create_table :product_images do |t|
      t.string :product_id
      t.string :file
      t.string :position

      t.timestamps
    end
  end
end
