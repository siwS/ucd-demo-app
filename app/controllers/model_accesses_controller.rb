class ModelAccessesController < ApplicationController
  before_action :set_model_view, only: [:show]

  # GET /orders
  # GET /orders.json
  def index
    @accesses = ModelAccess.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model_view
      @access = ModelAccess.find(params[:id])
    end
end
