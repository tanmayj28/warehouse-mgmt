class Product < ApplicationRecord
  has_many :inventories, foreign_key: :product_code, primary_key: :sku_code
  has_many :warehouses, through: :inventories
end
