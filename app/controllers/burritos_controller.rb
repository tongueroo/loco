class BurritosController < ApplicationController
  def best
    @burritos = Burrito.order('rating desc')
  end
end
