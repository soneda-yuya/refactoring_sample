# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin' do |t|
      t.bigint :category_id, null: false, comment: 'Category.id'
      t.string :name, null: true, comment: '名前'
      t.timestamps
    end
  end
end
