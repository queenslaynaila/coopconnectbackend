class SavedprofilesController < ApplicationController
  before_action :set_savedprofile, only: %i[ show update destroy ]

  # GET /savedprofiles
  def index
    @savedprofiles = Savedprofile.all

    render json: @savedprofiles
  end

  # GET /savedprofiles/1
  def show
    render json: @savedprofile
  end

  # POST /savedprofiles
  def create
    @savedprofile = Savedprofile.new(savedprofile_params)

    if @savedprofile.save
      render json: @savedprofile, status: :created, location: @savedprofile
    else
      render json: @savedprofile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /savedprofiles/1
  def update
    if @savedprofile.update(savedprofile_params)
      render json: @savedprofile
    else
      render json: @savedprofile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /savedprofiles/1
  def destroy
    @savedprofile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_savedprofile
      @savedprofile = Savedprofile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def savedprofile_params
      params.require(:savedprofile).permit(:employer_id, :seeker_id)
    end
end
