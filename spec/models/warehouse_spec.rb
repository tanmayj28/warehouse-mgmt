require 'rails_helper'

RSpec.describe Warehouse, type: :model do
  before(:each) do
    @warehouse = FactoryBot.create(:warehouse)
  end

  attr_reader :warehouse

  it 'has a valid object' do
    FactoryBot.create(:warehouse).should be_valid
  end

  it 'is invalid without a code' do
    FactoryBot.build(:warehouse, wh_code: nil).should_not be_valid
  end

  it 'is invalid with a duplicate code' do
    FactoryBot.build(:warehouse, wh_code: warehouse.wh_code).should_not be_valid
  end

  it 'is invalid if wh_code length is < 4 or > 16' do
    FactoryBot.build(:warehouse, wh_code: rand(3)).should_not be_valid
  end
end
