# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :todo do
    name "MyString"
    complete false
    user nil
  end
end
