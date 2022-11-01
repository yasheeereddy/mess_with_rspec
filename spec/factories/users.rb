FactoryBot.define do 
    factory :user do
      username { Faker::Internet.username }
      email { Faker::Internet.email }
      password { Faker::Internet.password }
    end
    trait :superadmin do
      username { "superadmin" }
    end
    trait :admin do
      username { "yashee" }  
    end
 end