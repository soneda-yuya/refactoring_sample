# frozen_string_literal: true

class CategorySettingItem < ApplicationRecord
  belongs_to :category
  has_many :product_category_setting_data

  class << self
    def fetch_category_setting_data(category_setting_item_id:)
      ProductCategorySettingData.find_by(category_setting_item_id: category_setting_item_id)
    end
  end
end
