class Warehouse < ApplicationRecord
  has_many :inventories, foreign_key: :warehouse_code, primary_key: :wh_code
  has_many :products, through: :inventories
end
