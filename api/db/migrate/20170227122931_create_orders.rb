class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      #t.integer :customer_id, null: false
      t.belongs_to :register, index: true
      t.belongs_to :food, index: true
      t.integer :quantity, null: false
      t.integer :total, null: false
      t.timestamps
    end
  end
end
