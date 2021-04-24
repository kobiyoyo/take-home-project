require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'association test' do
    it { is_expected.to have_many(:products) }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_length_of(:name).is_at_least(4) }
    it { is_expected.to validate_presence_of :category_code }
  end
end