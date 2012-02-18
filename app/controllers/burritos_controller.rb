class BurritosController < ApplicationController
  def best
    @burritos = Burrito.order("position #{params[:sort]}")
  end
end
