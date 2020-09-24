# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.includes(category: :category_setting_items).all
  end
end
