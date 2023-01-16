class JobapplicationsController < ApplicationController
  before_action :set_jobapplication, only: %i[ show update destroy ]

  # GET /jobapplications
  def index
    @jobapplications = Jobapplication.all

    render json: @jobapplications
  end

  # GET /jobapplications/1
  def show
    render json: @jobapplication
  end

  # POST /jobapplications
  def create
    @jobapplication = Jobapplication.new(jobapplication_params)

    if @jobapplication.save
      render json: @jobapplication, status: :created, location: @jobapplication
    else
      render json: @jobapplication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jobapplications/1
  def update
    if @jobapplication.update(jobapplication_params)
      render json: @jobapplication
    else
      render json: @jobapplication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jobapplications/1
  def destroy
    @jobapplication.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobapplication
      @jobapplication = Jobapplication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobapplication_params
      params.require(:jobapplication).permit(:job_id, :seeker_id, :status, :dateapplied)
    end
end
