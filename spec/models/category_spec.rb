# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'relations' do
    it { is_expected.to have_many :products }
    it { is_expected.to have_many :category_setting_items }
  end

  describe 'create' do
    subject { Category.create!(name: 'hoge') }
    it { expect { subject }.to change { Category.all.count }.by(1) }
  end
end
