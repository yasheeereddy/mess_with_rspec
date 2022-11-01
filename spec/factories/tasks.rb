FactoryBot.define do 
    factory :task do
      sequence :name do |i|
        "Eat breakfast#{1}" 
      end       
      category_id { "3" }
      user_id { "11" }
      trait :completed do
        status { true }
      end
      trait :not_completed do
        status { false }
      end
    end
 end