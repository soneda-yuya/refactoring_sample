# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_924_232_703) do
  create_table 'categories', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin', force: :cascade do |t|
    t.string 'name', comment: '名前'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'category_setting_items', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin', force: :cascade do |t|
    t.bigint 'category_id', comment: 'Category.id'
    t.string 'name', comment: '名前'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['category_id'], name: 'fk_rails_498012abc5'
  end

  create_table 'product_category_settings', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin', force: :cascade do |t|
    t.bigint 'product_id', comment: 'Product.id'
    t.bigint 'category_setting_item_id', comment: 'CategorySettingItem.id'
    t.integer 'enabled', null: false, comment: '有効・無効'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['category_setting_item_id'], name: 'fk_rails_b05ee1b9b1'
    t.index ['product_id'], name: 'fk_rails_eb77147280'
  end

  create_table 'products', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin', force: :cascade do |t|
    t.bigint 'category_id', null: false, comment: 'Category.id'
    t.string 'name', comment: '名前'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['category_id'], name: 'fk_rails_fb915499a4'
  end

  add_foreign_key 'category_setting_items', 'categories'
  add_foreign_key 'product_category_settings', 'category_setting_items'
  add_foreign_key 'product_category_settings', 'products'
  add_foreign_key 'products', 'categories'
end
