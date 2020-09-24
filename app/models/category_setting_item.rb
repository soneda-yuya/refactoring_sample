# frozen_string_literal: true

class CategorySettingItem < ApplicationRecord
  belongs_to :category
  has_many :product_category_settings
end
