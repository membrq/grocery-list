FactoryBot.define do
  factory :item do
    name "Sample Item"
    price 1.25
    quantity 1
    item_type "MyString"
    purchased false
  end
end
