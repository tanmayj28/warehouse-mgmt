require 'rails_helper'

RSpec.describe Product, type: :model do
  before(:each) do
    @product = FactoryBot.create(:product)
  end

  attr_reader :product

  it 'has a valid object' do
    FactoryBot.create(:product).should be_valid
  end

  it 'is invalid without a code' do
    FactoryBot.build(:product, sku_code: nil).should_not be_valid
  end

  it 'is invalid with a duplicate code' do
    FactoryBot.build(:product, sku_code: product.sku_code).should_not be_valid
  end
end
