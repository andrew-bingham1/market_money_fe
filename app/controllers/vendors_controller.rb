class VendorsController < ApplicationController
  def show
    @facade = MarketsFacade.new(params)
  end
end