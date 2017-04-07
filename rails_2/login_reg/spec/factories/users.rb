FactoryGirl.define do
  factory :user do
    first_name "Paul"
    last_name "MacLachlan"
    email "me@mine.com"
    password "password"
    password_confirmation "password"
  end
end
