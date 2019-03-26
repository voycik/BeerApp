require "rails_helper"
RSpec.feature "Saving beer" do
  let(:user) { create(:user) }
  scenario 'Signed in user saves beer' do
    sign_in user
    visit "/"
    click_link 'Save this beer'

    expect(page).to have_content("You saved #{JSON.parse($beer)[0]['name']} to your beers")
    expect(page.current_path).to eq(my_beers_path)
    expect(MyBeer.last.user).to eq(user)
  end
end
