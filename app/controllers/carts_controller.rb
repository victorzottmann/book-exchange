class CartsController < ApplicationController

  def index
    
  end

  def create
    
  end

  private
    def total_amount
      sum = 0
      @cart.each do |book|
        sum += book.price
      end
      return sum
    end
end
