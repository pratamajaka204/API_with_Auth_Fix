class BicyclesController < ApplicationController
  # before_action :authenticate_user!
  # before_filter :authenticate_request!
  before_action :set_bicycle, only: [:show, :update, :destroy]

  # GET /bicycles
  def index
    @bicycles = Bicycle.all

    render json: @bicycles
    # render json: {'logged_in' => true}
  end

  # GET /bicycles/1
  def show
    render json: @bicycle
  end

  # POST /bicycles
  def create
    @bicycle = Bicycle.new(bicycle_params)

    if @bicycle.save
      render json: @bicycle, status: :created, location: @bicycle
    else
      render json: @bicycle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bicycles/1
  def update
    if @bicycle.update(bicycle_params)
      render json: @bicycle
    else
      render json: @bicycle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bicycles/1
  def destroy
    @bicycle.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicycle
      @bicycle = Bicycle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bicycle_params
      params.require(:bicycle).permit(:name, :series)
    end
end
