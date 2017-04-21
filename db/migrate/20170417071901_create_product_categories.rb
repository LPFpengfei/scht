class CreateProductCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :product_categories do |t|
      t.string :name
      t.string :productCategoryId
      t.string :comment

      t.timestamps
    end
  end
end
