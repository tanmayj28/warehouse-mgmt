class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :sku_code, limit: 8, null: false
      t.string :name
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
      t.index :sku_code, unique: true
    end
  end
end
