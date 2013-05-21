FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@notarealdomain.abcdefg"}
    sequence(:bio) {|n| "i am #{n} years old and i haz a blog"}
  end
end