class AddNotNullOnTable < ActiveRecord::Migration[6.0]
  def change
    change_column_null :category_setting_items, :category_id, false
    change_column_null :product_category_settings, :category_setting_item_id, false
    change_column_null :product_category_settings, :product_id, false
  end
end
