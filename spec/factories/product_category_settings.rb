# frozen_string_literal: true

FactoryBot.define do
  factory :product_category_setting do
    enabled { 1 }
    after(:build) do |r|
      r.product ||= create(:product)
      r.category_setting_item ||= create(
        :category_setting_item,
        category: r.product.category
      )
    end
  end
end
