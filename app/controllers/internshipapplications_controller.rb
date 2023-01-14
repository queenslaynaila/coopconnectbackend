class InternshipapplicationsController < ApplicationController
  before_action :set_internshipapplication, only: %i[ show update destroy ]

  # GET /internshipapplications
  def index
    @internshipapplications = Internshipapplication.all

    render json: @internshipapplications
  end

  # GET /internshipapplications/1
  def show
    render json: @internshipapplication
  end

  # POST /internshipapplications
  def create
    @internshipapplication = Internshipapplication.new(internshipapplication_params)

    if @internshipapplication.save
      render json: @internshipapplication, status: :created, location: @internshipapplication
    else
      render json: @internshipapplication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /internshipapplications/1
  def update
    if @internshipapplication.update(internshipapplication_params)
      render json: @internshipapplication
    else
      render json: @internshipapplication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /internshipapplications/1
  def destroy
    @internshipapplication.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_internshipapplication
      @internshipapplication = Internshipapplication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def internshipapplication_params
      params.require(:internshipapplication).permit(:internship_id, :dateapplied, :seeker_id)
    end
end
