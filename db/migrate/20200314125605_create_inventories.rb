class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.string :product_code
      t.string :warehouse_code
      t.integer :item_count
      t.integer :item_threshold

      t.timestamps

      t.index :product_code, unique: true
      t.index :warehouse_code, unique: true
    end
  end
end
