FactoryBot.define do 
    factory :user do
      username { Faker::Internet.username }
      email { Faker::Internet.email }
      password { Faker::Internet.password }

      trait :user_status do
        status_id 0
      end
  
      trait :admin_status do
        status_id 1
      end 
    end
 end