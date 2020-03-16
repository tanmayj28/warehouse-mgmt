require 'spec_helper'

describe Inventory do
  it 'has a valid factoryGirl' do
    FactoryGirl.create(:amenity).should be_valid
  end

  it 'is invalid without a name' do
    FactoryGirl.build(:amenity, name: nil).should_not be_valid
  end

  it 'is invalid with a duplicate name' do
    FactoryGirl.create(:amenity, name: 'foo')
    FactoryGirl.build(:amenity, name: 'foo').should_not be_valid
  end

  context 'validated attribute' do
    it 'should not be validated by default' do
      FactoryGirl.create(:amenity).validated?.should be false
    end

    it 'should allow validated to be set to true' do
      amenity = FactoryGirl.create(:amenity)
      amenity.update(validated: true)
      amenity.reload.validated?.should be true
    end
  end

  context 'archive attribute' do
    it 'should not be achive by default' do
      FactoryGirl.create(:amenity).archive?.should be false
    end

    it 'should allow archive to be set to true' do
      amenity = FactoryGirl.create(:amenity)
      amenity.update(archive: true)
      amenity.reload.archive?.should be true
    end
  end
end
