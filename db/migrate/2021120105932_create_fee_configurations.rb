class CreateFeeConfigurations < ActiveRecord::Migration[6.0]
  def change
    create_table :fee_configurations do |t|
      t.references :fee_configurations_type, foreign_key: true, null: false
      t.string :fee_percentage
      t.string :min_amount
      t.string :max_amount
      t.timestamps
    end
  end
end
