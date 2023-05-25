class MarketsController < ApplicationController
  def index
    @facade = MarketsFacade.new(params)
  end

  def show 
    @facade = MarketsFacade.new(params)
  end
end