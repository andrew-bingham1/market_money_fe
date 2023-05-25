require 'rails_helper'

RSpec.describe 'Market Index Page', :vcr do
  it 'exists' do
    visit markets_path

    expect(current_path).to eq(markets_path)

    within('#title') do
      expect(page).to have_content('Markets')
    end
  end

  it 'displays all markets' do
    visit markets_path

    within('#markets-table') do
      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("2nd Street Farmers' Market")
    end
  end

  it 'displays a link to each market show page' do
    visit markets_path

    within('#markets-table') do
      expect(page).to have_button("More Info")
    end
  end

  it 'links to each market show page' do
    visit markets_path

    within('#markets-table') do
      click_button("More Info", :match => :first)
    end

    expect(current_path).to eq(market_path(322458))
  end
end

# As a visitor,
# When I visit '/markets'
# I see all markets listed with their name, city and state
# When I click a button to see more info on that market
# I'm taken to that market's show page '/markets/:id'