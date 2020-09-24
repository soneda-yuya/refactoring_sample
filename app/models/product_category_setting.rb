# frozen_string_literal: true

class ProductCategorySetting < ApplicationRecord
  belongs_to :product
  belongs_to :category_setting_item
end
