FactoryBot.define do 
    factory :category do
      category { "grocery list" }
    end
    trait :must_category do
      category { "home" }
    end
 end