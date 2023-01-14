class KeyskillsController < ApplicationController
  before_action :set_keyskill, only: %i[ show update destroy ]

  # GET /keyskills
  def index
    @keyskills = Keyskill.all

    render json: @keyskills
  end

  # GET /keyskills/1
  def show
    render json: @keyskill
  end

  # POST /keyskills
  def create
    @keyskill = Keyskill.new(keyskill_params)

    if @keyskill.save
      render json: @keyskill, status: :created, location: @keyskill
    else
      render json: @keyskill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /keyskills/1
  def update
    if @keyskill.update(keyskill_params)
      render json: @keyskill
    else
      render json: @keyskill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /keyskills/1
  def destroy
    @keyskill.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keyskill
      @keyskill = Keyskill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def keyskill_params
      params.require(:keyskill).permit(:seeker_id, :skillname)
    end
end
