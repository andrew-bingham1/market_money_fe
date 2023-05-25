require 'rails_helper'

RSpec.describe 'Market Show Page', :vcr do
  it 'exists' do
    visit market_path(322458)

    expect(current_path).to eq(market_path(322458))
  end

  it 'displays the market name and address' do
    visit market_path(322458)

    within('#name') do
      expect(page).to have_content("14&U Farmers' Market")
    end

    within('#address') do
      expect(page).to have_content("1400 U Street NW")
      expect(page).to have_content("Washington, District of Columbia 20009")
    end
  end

  it 'displays a list of all vendors at the market' do
    visit market_path(322458)

    within('#vendors') do
      expect(page).to have_content("Vendors at our Market:")
      expect(page).to have_link("The Charcuterie Corner")
    end
  end
end



# As a visitor,
# When I visit a market's show page 'markets/:id'
# I see that market's name and readable address
# And I also see a list of all the Vendors that are at that market
# Each vendor name is a link to that vendor's show page