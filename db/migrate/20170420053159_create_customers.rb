class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :nickname
      t.string :mobile
      t.string :password

      t.timestamps
    end
  end
end
