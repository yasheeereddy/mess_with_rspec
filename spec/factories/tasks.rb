FactoryBot.define do 
    factory :task do
      name { "Eat breakfast" }
      status { "true" }
      category_id {"5"}
      user_id { "11" }
    end
 end