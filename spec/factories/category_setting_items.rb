# frozen_string_literal: true

FactoryBot.define do
  factory :category_setting_item do
    name { Faker::Movies::StarWars.character }
    after(:build) do |r|
      r.category ||= create(:category)
    end
  end
end
