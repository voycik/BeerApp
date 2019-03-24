FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@mail.com"}
    password {"123qwe"}
  end
end
