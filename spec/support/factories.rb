FactoryGirl.define do
  factory :post do
    title 
    body "My body"
    author "My author"
  end
  
  sequence :title do |n|
    "Title_#{n}"
  end
end
