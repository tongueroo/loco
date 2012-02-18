class BurritosController < ApplicationController
  def best
    @burritos = Burrito.order("position #{params[:sort]}")
  end

  # GET /burritos
  # GET /burritos.json
  def index
    @burritos = Burrito.all
  end

  # GET /burritos/1
  # GET /burritos/1.json
  def show
    @burrito = Burrito.find(params[:id])
  end

  # GET /burritos/new
  # GET /burritos/new.json
  def new
    @burrito = Burrito.new
  end

  # GET /burritos/1/edit
  def edit
    @burrito = Burrito.find(params[:id])
  end

  # POST /burritos
  # POST /burritos.json
  def create
    @burrito = Burrito.new(params[:burrito])

    if @burrito.save
      redirect_to @burrito, notice: 'Burrito was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /burritos/1
  # PUT /burritos/1.json
  def update
    @burrito = Burrito.find(params[:id])

    if @burrito.update_attributes(params[:burrito])
      redirect_to @burrito, notice: 'Burrito was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /burritos/1
  # DELETE /burritos/1.json
  def destroy
    @burrito = Burrito.find(params[:id])
    @burrito.destroy

    redirect_to burritos_url
  end
end
