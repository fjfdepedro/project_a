class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :merchant, foreign_key: true, null: false
      t.references :shopper, foreign_key: true, null: false
      t.float :amount
      t.string :email
      t.string :cif
      t.string :status
      t.datetime :complete_at
      t.timestamps
    end
  end
end
