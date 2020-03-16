require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  before(:each) do
    @product = FactoryBot.create(:product)
    @warehouse = FactoryBot.create(:warehouse)
  end

  attr_reader :product, :warehouse

  it 'has a valid object' do
    FactoryBot.create(:inventory, warehouse_code: warehouse.wh_code, product_code: product.sku_code).should be_valid
  end

  it 'is invalid without a name' do
    FactoryBot.build(:amenity, name: nil).should_not be_valid
  end

  it 'is invalid with a duplicate name' do
    FactoryBot.create(:amenity, name: 'foo')
    FactoryBot.build(:amenity, name: 'foo').should_not be_valid
  end

  context 'validated attribute' do
    it 'should not be validated by default' do
      FactoryBot.create(:amenity).validated?.should be false
    end

    it 'should allow validated to be set to true' do
      amenity = FactoryBot.create(:amenity)
      amenity.update(validated: true)
      amenity.reload.validated?.should be true
    end
  end

  context 'archive attribute' do
    it 'should not be achive by default' do
      FactoryBot.create(:amenity).archive?.should be false
    end

    it 'should allow archive to be set to true' do
      amenity = FactoryBot.create(:amenity)
      amenity.update(archive: true)
      amenity.reload.archive?.should be true
    end
  end
end
