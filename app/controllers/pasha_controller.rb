class PashaController < ApplicationController
  def index
    @order=Order.new
  end
end
