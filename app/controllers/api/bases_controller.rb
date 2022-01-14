class BasesController < ApplicationController
  before_action :set_basis, only: %i[ show edit update destroy ]

  # GET /bases or /bases.json
  def index
    @bases = Base.all
  end

  # GET /bases/1 or /bases/1.json
  def show
  end

  # GET /bases/new
  def new
    @basis = Base.new
  end

  # GET /bases/1/edit
  def edit
  end

  # POST /bases or /bases.json
  def create
    @basis = Base.create!(basis_params)
  end

  # PATCH/PUT /bases/1 or /bases/1.json
  def update
    @basis.update!(basis_params)
  end

  # DELETE /bases/1 or /bases/1.json
  def destroy
    @basis.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basis
      @basis = Base.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def basis_params
      params.fetch(:basis, {})
    end
end
