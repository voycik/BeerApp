require 'rails_helper'

RSpec.describe MyBeer, type: :model do
   it { should belong_to(:user) }
   it { is_expected.to allow_value(11).for(:beer_id) }
   it { is_expected.not_to allow_value("abc").for(:beer_id) }
end
