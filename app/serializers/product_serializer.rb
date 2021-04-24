class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :product_code, :quantity, :brand, :price
  has_one :category
end
