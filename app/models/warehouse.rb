class Warehouse < ApplicationRecord
  has_many :inventories, foreign_key: :warehouse_code, primary_key: :wh_code
  has_many :products, through: :inventories
  validates :wh_code, length: 4..16, uniqueness: true
end
