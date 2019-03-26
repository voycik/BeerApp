require 'rails_helper'

RSpec.describe MyBeersController, type: :controller do
  let(:user) {create (:user)}

  describe '#index' do
    it { should route(:get, '/my_beers').to(action: :index) }

    context 'Signed in user' do
      before do
        sign_in user
        get :index
      end
      it { should respond_with(200) }
    end

    context 'Not signed in' do
      before do
        get :index
      end
      it { should respond_with(302) }
    end
  end
end
