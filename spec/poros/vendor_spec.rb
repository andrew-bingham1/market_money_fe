require 'rails_helper'

RSpec.describe Vendor do
  it 'exists' do
    attrs = {
      "id": "55174",
      "type": "vendor",
      "attributes": {
          "name": "Wholly Crepe",
          "description": "sells sweet and savory crepes with unique flavor combinations",
          "contact_name": "Miss Virgie Heaney",
          "contact_phone": "1-651-964-9975",
          "credit_accepted": false
      }
    }

    vendor = Vendor.new(attrs)

    expect(vendor).to be_a(Vendor)
    expect(vendor.id).to eq("55174")
    expect(vendor.name).to eq("Wholly Crepe")
    expect(vendor.description).to eq("sells sweet and savory crepes with unique flavor combinations")
    expect(vendor.contact_name).to eq("Miss Virgie Heaney")
    expect(vendor.contact_phone).to eq("1-651-964-9975")
    expect(vendor.credit_accepted).to eq("NO")
  end
end