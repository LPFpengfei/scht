class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :userId
      t.string :amount
      t.string :createdate
      t.string :paydata
      t.string :canceldata
      t.string :province
      t.string :city
      t.string :county
      t.string :address
      t.string :name
      t.string :phone

      t.timestamps
    end
  end
end
