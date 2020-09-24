# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Category.includes(:category_setting_items, [products: :product_category_settings]).all
  end
end
