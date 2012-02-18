class BurritosController < ApplicationController
  def best
    @burritos = Burrito.order('position asc')
  end
end
