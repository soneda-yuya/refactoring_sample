# frozen_string_literal: true

class CreateProductCategorySettingData < ActiveRecord::Migration[6.0]
  def change
    create_table :product_category_setting_data, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin' do |t|
      t.bigint :product_id, null: true, comment: 'Product.id'
      t.bigint :category_setting_item_id, null: true, comment: 'CategorySettingItem.id'
      t.integer :enabled, null: false, comment: '有効・無効'
      t.timestamps
    end
  end
end
