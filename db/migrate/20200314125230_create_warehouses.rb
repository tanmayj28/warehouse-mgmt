class CreateWarehouses < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouses do |t|
      t.string :wh_code, limit: 8, null: false
      t.string :name
      t.integer :pincode
      t.integer :max_capacity

      t.timestamps
      t.index :wh_code, unique: true
    end
  end
end
