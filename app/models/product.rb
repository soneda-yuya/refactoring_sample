# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category
  has_many :product_category_settings

  def fetch_category(category_id:)
    Category.where(category_id: category_id)
  end
end
