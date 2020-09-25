# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProductCategorySetting, type: :model do
  describe 'relations' do
    it { is_expected.to belong_to :product }
    it { is_expected.to belong_to :category_setting_item }
  end

  describe 'create' do
    subject do
      ProductCategorySetting.create!(
        product: product,
        category_setting_item: category_setting_item,
        enabled: 1
      )
    end
    let(:product) { create(:product) }
    let(:category_setting_item) { create(:category_setting_item, category: product.category) }
    it {
      expect { subject }.to change {
                              ProductCategorySetting.where(
                                product: product,
                                category_setting_item: category_setting_item
                              ).count
                            }.by(1)
    }
  end
end
