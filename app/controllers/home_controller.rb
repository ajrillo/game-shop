class HomeController < ApplicationController
  def home
  end
  
  def inquiry
    @customers = Customer.all
  end
  
  def new
    @customer = Customer.new
  end
  
  def game
    @games = Game.all
  end
  
  def price
    @prices = Price.all
    @games = Game.all
  end
end
