require 'rails_helper'

RSpec.describe MarketService, :vcr do
  it 'can get all markets' do
    json = MarketService.new.get_markets

    expect(json).to be_a(Hash)
    expect(json[:data]).to be_an(Array)
  end

  it 'can get a single market' do
    json = MarketService.new.get_market(322458)

    expect(json).to be_a(Hash)
    expect(json[:data]).to be_a(Hash)
  end

  it 'can get all vendors for a market' do
    json = MarketService.new.get_vendors(322458)

    expect(json).to be_a(Hash)
    expect(json[:data]).to be_an(Array)
  end

  it 'can get a single vendor' do
    json = MarketService.new.get_vendor(55174)

    expect(json).to be_a(Hash)
    expect(json[:data]).to be_a(Hash)
  end
end