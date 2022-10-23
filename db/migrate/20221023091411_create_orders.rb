class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :title
      t.text :customer
      t.text :customer_address
      t.text :body

      t.timestamps
    end
  end
end
