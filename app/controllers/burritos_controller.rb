class BurritosController < ApplicationController
  def best
    @burritos = Burrito.order("position #{params[:sort]}")
  end

  def index
    @burritos = Burrito.all
  end

  def show
    @burrito = Burrito.find(params[:id])
  end

  def new
    @burrito = Burrito.new
  end

  def edit
    @burrito = Burrito.find(params[:id])
  end

  def create
    @burrito = Burrito.new(params[:burrito])

    if @burrito.save
      redirect_to @burrito, notice: 'Burrito was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @burrito = Burrito.find(params[:id])

    if @burrito.update_attributes(params[:burrito])
      redirect_to @burrito, notice: 'Burrito was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @burrito = Burrito.find(params[:id])
    @burrito.destroy

    redirect_to burritos_url
  end
end
