FactoryBot.define do
  factory :warehouse do
    wh_code {Faker::Alphanumeric.alphanumeric(number: [*4..16])}
    name {Faker::Beer.brand}
    pincode {Faker::Number.number(digits: 6)}
    max_capacity {Faker::Number.number(digits: 10)}
  end
end
