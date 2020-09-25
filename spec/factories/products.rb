# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { Faker::Movies::StarWars.character }
    after(:build) do |r|
      r.category ||= create(:category)
      if r.product_category_settings.blank?
        r.product_category_settings << create(
          :product_category_setting,
          product: r,
          category_setting_item: create(
            :category_setting_item,
            category: r.category
          )
        )
      end
    end
  end
end
