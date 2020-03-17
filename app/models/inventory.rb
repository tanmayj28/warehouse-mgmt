class Inventory < ApplicationRecord
  belongs_to :product, foreign_key: :product_code, primary_key: :sku_code
  belongs_to :warehouse, foreign_key: :warehouse_code, primary_key: :wh_code
  validates :product_code, uniqueness: { scope: :warehouse_code }
  validates :warehouse_code, uniqueness: { scope: :product_code }
end
