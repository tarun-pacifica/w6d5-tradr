class StocksController < ApplicationController
  # before_filter :logged_in_view

  def index
  end

  def stock
  @stock = params[:symbol]
    @stock = @stock.upcase
    @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock].lastTrade
    @everything = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock]
    @name = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock].name
    @change = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock)[@stock].changePercent
  end

  private
  def logged_in_view
    if @auth.nil?
      redirect_to(root_path)
      print("You are not logged in")
    end
  end

end