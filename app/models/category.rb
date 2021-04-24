class Category < ApplicationRecord
    validates :name, presence: true, length: { in: 4..50 }
    validates :category_code, presence: true

    has_many :products
end
# == Schema Information
#
# Table name: Category
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  category_code :integer         not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null