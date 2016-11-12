FactoryGirl.define do
  factory :post do
    title "string"
    body "My body"
    author "My author"
  end
  
  factory :comment do
    body "My comment"
    author "Comment author"
  end
  
  # sequence :title do |n|
  #   "Title_#{n}"
  # end
end
