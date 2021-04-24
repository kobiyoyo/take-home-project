require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'association test' do
    it { is_expected.to belong_to(:category) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_length_of(:name).is_at_least(4) }
    it { is_expected.to validate_presence_of :brand }
    it { is_expected.to validate_length_of(:brand).is_at_least(4) }
    it { is_expected.to validate_presence_of :product_code }
    it { is_expected.to validate_presence_of :quantity }
    it { is_expected.to validate_presence_of :price }
  end
end

