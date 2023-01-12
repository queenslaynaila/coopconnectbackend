class SavedjobsController < ApplicationController
  before_action :set_savedjob, only: %i[ show update destroy ]

  # GET /savedjobs
  def index
    @savedjobs = Savedjob.all

    render json: @savedjobs
  end

  # GET /savedjobs/1
  def show
    render json: @savedjob
  end

  # POST /savedjobs
  def create
    @savedjob = Savedjob.new(savedjob_params)

    if @savedjob.save
      render json: @savedjob, status: :created, location: @savedjob
    else
      render json: @savedjob.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /savedjobs/1
  def update
    if @savedjob.update(savedjob_params)
      render json: @savedjob
    else
      render json: @savedjob.errors, status: :unprocessable_entity
    end
  end

  # DELETE /savedjobs/1
  def destroy
    @savedjob.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_savedjob
    @savedjob = Savedjob.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def savedjob_params
    params.require(:savedjob).permit(:seeker_id, :job_id)
  end
end
