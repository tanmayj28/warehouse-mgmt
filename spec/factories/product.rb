FactoryBot.define do
  factory :product do
    sku_code {Faker::Alphanumeric.alpha(number: 8)}
    name {Faker::Beer.brand}
    price {Faker::Number.decimal(l_digits: 3, r_digits: 2).to_f}
  end
end
