# frozen_string_literal: true

class CategorySettingItem < ApplicationRecord
  belongs_to :category
  has_many :product_category_settings

  class << self
    def fetch_category_setting_data(product_id:, category_setting_item_id:)
      ProductCategorySetting.find_by(product_id: product_id, category_setting_item_id: category_setting_item_id)
    end
  end
end
