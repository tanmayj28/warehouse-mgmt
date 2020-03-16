require 'factory_bot_rails'
require 'faker'
FactoryBot.define do
  factory :inventory do
    warehouse_code {FactoryBot.create(:warehouse).wh_code}
    product_code {FactoryBot.create(:product).sku_code}
    item_count {Faker::Number.number(digits: 6)}
    item_threshold {Faker::Number.number(digits: 2)}
  end
end
