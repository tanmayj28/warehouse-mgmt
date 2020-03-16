class Inventory < ApplicationRecord
  belongs_to :product, foreign_key: :product_code, primary_key: :sku_code
  belongs_to :warehouse, foreign_key: :warehouse_code, primary_key: :wh_code
  validates_uniqueness_of :product_code, uniqueness: {scope: :warehouse_code}
  validates_uniqueness_of :warehouse_code, uniqueness: {scope: :product_code}
end
