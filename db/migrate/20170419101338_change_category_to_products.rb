class ChangeCategoryToProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :productcategoryid, :string
    add_column :products, :product_category_id, :integer
  end
end
