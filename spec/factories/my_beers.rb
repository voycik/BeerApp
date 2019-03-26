FactoryBot.define do
  factory :my_beer do
    user_id { 1 }
    sequence(:beer_id) {|n| n }    
  end
end
