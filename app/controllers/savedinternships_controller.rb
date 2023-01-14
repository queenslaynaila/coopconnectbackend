class SavedinternshipsController < ApplicationController
  before_action :set_savedinternship, only: %i[ show update destroy ]

  # GET /savedinternships
  def index
    @savedinternships = Savedinternship.all

    render json: @savedinternships
  end

  # GET /savedinternships/1
  def show
    render json: @savedinternship
  end

  # POST /savedinternships
  def create
    @savedinternship = Savedinternship.new(savedinternship_params)

    if @savedinternship.save
      render json: @savedinternship, status: :created, location: @savedinternship
    else
      render json: @savedinternship.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /savedinternships/1
  def update
    if @savedinternship.update(savedinternship_params)
      render json: @savedinternship
    else
      render json: @savedinternship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /savedinternships/1
  def destroy
    @savedinternship.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_savedinternship
      @savedinternship = Savedinternship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def savedinternship_params
      params.require(:savedinternship).permit(:seeker_id, :internship_id)
    end
end
