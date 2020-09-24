# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |_|
  Category.create!(
    name: Faker::Movies::StarWars.character
  )
end
categories = Category.all

100.times do |_|
  Product.create!(
    name: Faker::Movies::StarWars.character,
    category: categories.sample
  )
end
products = Product.all

100.times do |_|
  CategorySettingItem.create!(
    name: Faker::Movies::StarWars.character,
    category: categories.sample
  )
end
category_setting_items = CategorySettingItem.all

100.times do |_|
  ProductCategorySettingData.create!(
    product: products.sample,
    category_setting_item: category_setting_items.sample,
    enabled: [0, 1].sample
  )
end
