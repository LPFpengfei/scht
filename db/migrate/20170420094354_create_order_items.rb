class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.string :orderId
      t.string :productId
      t.string :productName
      t.string :productQuantity
      t.string :productprice

      t.timestamps
    end
  end
end
