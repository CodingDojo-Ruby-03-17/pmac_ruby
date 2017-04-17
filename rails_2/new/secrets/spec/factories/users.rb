FactoryGirl.define do
  factory :user do
    name "Paul"
    email "me@mines.com"
    password "password"
    password_confirmation "password"
  end
end
