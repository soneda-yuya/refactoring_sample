# frozen_string_literal: true

class CreateCategorySettingItems < ActiveRecord::Migration[6.0]
  def change
    create_table :category_setting_items, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin' do |t|
      t.bigint :category_id, null: true, comment: 'Category.id'
      t.string :name, null: true, comment: '名前'
      t.timestamps
    end
  end
end
