class BurritosController < ApplicationController
  def best
    @burritos = Burrito.order("position #{params[:sort]}")
  end

  # GET /burritos
  # GET /burritos.json
  def index
    @burritos = Burrito.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @burritos }
    end
  end

  # GET /burritos/1
  # GET /burritos/1.json
  def show
    @burrito = Burrito.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @burrito }
    end
  end

  # GET /burritos/new
  # GET /burritos/new.json
  def new
    @burrito = Burrito.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @burrito }
    end
  end

  # GET /burritos/1/edit
  def edit
    @burrito = Burrito.find(params[:id])
  end

  # POST /burritos
  # POST /burritos.json
  def create
    @burrito = Burrito.new(params[:burrito])

    respond_to do |format|
      if @burrito.save
        format.html { redirect_to @burrito, notice: 'Burrito was successfully created.' }
        format.json { render json: @burrito, status: :created, location: @burrito }
      else
        format.html { render action: "new" }
        format.json { render json: @burrito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /burritos/1
  # PUT /burritos/1.json
  def update
    @burrito = Burrito.find(params[:id])

    respond_to do |format|
      if @burrito.update_attributes(params[:burrito])
        format.html { redirect_to @burrito, notice: 'Burrito was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @burrito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /burritos/1
  # DELETE /burritos/1.json
  def destroy
    @burrito = Burrito.find(params[:id])
    @burrito.destroy

    respond_to do |format|
      format.html { redirect_to burritos_url }
      format.json { head :ok }
    end
  end
end
