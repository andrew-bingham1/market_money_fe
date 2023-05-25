class MarketsFacade 

  def initialize(params)
    @id = params[:id]
  end

  def markets
    markets_data[:data].map do |market|
      Market.new(market)
    end
  end

  def market
    json = service.get_market(@id)[:data]
    Market.new(json)
  end

  def vendors
    vendors_data(@id)[:data].map do |vendor|
      Vendor.new(vendor)
    end
  end

  def vendor
    json = service.get_vendor(@id)[:data]
    Vendor.new(json)
  end

  private 

  def service
    @_service ||= MarketService.new
  end

  def markets_data
    @_market_data ||= service.get_markets
  end

  def market_data(id)
    @_market ||= service.get_market(id)
  end

  def vendors_data(id)
    @_vendors ||= service.get_vendors(id)
  end

  def vendor_data(id)
    @_vendor ||= service.get_vendor(id)
  end

end