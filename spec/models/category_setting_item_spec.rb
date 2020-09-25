# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CategorySettingItem, type: :model do
  describe 'relations' do
    it { is_expected.to belong_to :category }
    it { is_expected.to have_many :product_category_settings }
  end

  describe 'create' do
    subject { CategorySettingItem.create!(name: 'hoge', category: create(:category)) }
    it { expect { subject }.to change { CategorySettingItem.all.count }.by(1) }
  end
end
