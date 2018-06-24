FactoryBot.define do
  factory :user do
    #sequence :email do |n|
    #  "email#{n}@factory.com"
    #end
  
      id 1
      first_name "Jane"
      last_name "Doe"
      username "thatgirljane"
      email "email@example.com"
      password "basicuser"
      #password_confirmation "basicuser"
      confirmed_at {Time.now}

  end
end
