class AddReferenceOnTable < ActiveRecord::Migration[6.0]
  def change
    unless foreign_key_exists?(:category_setting_items, :categories)
      add_foreign_key :category_setting_items, :categories
    end
    add_foreign_key :products, :categories unless foreign_key_exists?(:products, :categories)
    add_foreign_key :product_category_settings, :products unless foreign_key_exists?(:products, :products)
    unless foreign_key_exists?(:product_category_settings, :category_setting_items)
      add_foreign_key :product_category_settings, :category_setting_items
    end
  end
end
