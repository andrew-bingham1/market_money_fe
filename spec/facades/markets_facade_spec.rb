require 'rails_helper'

RSpec.describe MarketsFacade, :vcr do
  it 'can get all markets' do
    params = {id: 322458}
    facade = MarketsFacade.new(params)

    expect(facade.markets).to be_an(Array)
    expect(facade.markets.first).to be_a(Market)
  end

  it 'can get a single market' do
    params = {id: 322458}
    facade = MarketsFacade.new(params)

    expect(facade.market).to be_a(Market)
  end

  it 'can get all vendors for a market' do
    params = {id: 322458}
    facade = MarketsFacade.new(params)

    expect(facade.vendors).to be_an(Array)
    expect(facade.vendors.first).to be_a(Vendor)
  end

  it 'can get a single vendor' do
    params = {id: 55174}
    facade = MarketsFacade.new(params)

    expect(facade.vendor).to be_a(Vendor)
  end
end