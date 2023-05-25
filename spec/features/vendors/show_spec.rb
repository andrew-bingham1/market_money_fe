require 'rails_helper'

RSpec.describe 'Vendor Show Page', :vcr do
  it 'exists' do
    visit vendor_path(55174)

    expect(current_path).to eq(vendor_path(55174))
  end

  it 'displays the vendor name' do
    visit vendor_path(55174)

    within('#name') do
      expect(page).to have_content("Wholly Crepe")
    end
  end

  it "displays the vendor's contact informaton, whether they accept credit, and a description" do
    visit vendor_path(55174)

    within('#vendor-info') do
      expect(page).to have_content('Name: Miss Virgie Heaney')
      expect(page).to have_content('Phone: 1-651-964-9975')
      expect(page).to have_content('Credit Accepted: NO')
      expect(page).to have_content('Description: sells sweet and savory crepes with unique flavor combinations')
    end
  end
end