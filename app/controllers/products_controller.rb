# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.includes(:product_category_settings, [category: :category_setting_items]).all
  end
end
