class ChangeProductCategoryKeyToCategory < ActiveRecord::Migration[5.0]
  def change
    remove_column :product_categories, :productCategoryId, :string
  end
end
