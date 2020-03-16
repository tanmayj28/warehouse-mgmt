require 'rails_helper'

RSpec.describe Inventory, type: :model do
  it 'has a valid object' do
    FactoryBot.create(:inventory).should be_valid
  end

  it 'is invalid if product is not present' do
    FactoryBot.build(:inventory, product_code: nil).should_not be_valid
  end

  it 'is invalid if warehouse is not present' do
    FactoryBot.build(:inventory, warehouse_code: nil).should_not be_valid
  end

  it 'is invalid if one inventory is present multiple times for one warehouse' do
    inv = FactoryBot.create(:inventory)
    FactoryBot.build(:inventory, warehouse_code: inv.warehouse_code).should_not be_valid
    FactoryBot.build(:inventory, product_code: inv.product_code).should_not be_valid
  end
end
