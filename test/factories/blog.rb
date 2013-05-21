FactoryGirl.define do
  factory :blog do
    sequence(:title) {|n| "My Amazing Blog ##{n}"}
    description "this blog is like my cat. it is amazing."
  end
end