# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'relations' do
    it { is_expected.to belong_to :category }
    it { is_expected.to have_many :product_category_settings }
  end

  describe 'create' do
    subject { Product.create!(name: 'hoge', category: create(:category)) }
    it { expect { subject }.to change { Product.all.count }.by(1) }
  end
end
