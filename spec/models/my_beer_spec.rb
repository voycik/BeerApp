require 'rails_helper'

RSpec.describe MyBeer, type: :model do
   it { should belong_to(:user) }
end
