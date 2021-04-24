FactoryBot.define do
  factory :product do
    name { "MyString" }
    product_code { 1 }
    quantity { 1 }
    brand { "MyString" }
    price { 1.5 }
    category { nil }
  end
end
