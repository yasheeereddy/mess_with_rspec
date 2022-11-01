FactoryBot.define do 
    factory :task do
      sequence :name do |i|
        "Eat breakfast#{1}" 
      end       
      status { "true" }
      category_id { "5" }
      user_id { "11" }
    end
 end