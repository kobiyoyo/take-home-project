class Product < ApplicationRecord
  validates :name, presence: true, length: { in: 4..50 }
  validates :product_code, presence: true
  validates :quantity, presence: true
  validates :price, presence: true
  validates :category_id, presence: true
  validates :brand, presence: true, length: { in: 4..50 }

  belongs_to :category
end
# == Schema Information
#
# Table name: Product
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  product_code :integer          not null
#  quantity     :integer          not null
#  price        :integer          not null
#  brand        :string           not null
#  category_id  :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null