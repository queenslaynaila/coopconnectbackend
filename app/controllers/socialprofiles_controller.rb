class SocialprofilesController < ApplicationController
  before_action :set_socialprofile, only: %i[ show update destroy ]

  # GET /socialprofiles
  def index
    @socialprofiles = Socialprofile.all

    render json: @socialprofiles
  end

  # GET /socialprofiles/1
  def show
    render json: @socialprofile
  end

  # POST /socialprofiles
  def create
    @socialprofile = Socialprofile.new(socialprofile_params)

    if @socialprofile.save
      render json: @socialprofile, status: :created, location: @socialprofile
    else
      render json: @socialprofile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /socialprofiles/1
  def update
    if @socialprofile.update(socialprofile_params)
      render json: @socialprofile
    else
      render json: @socialprofile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /socialprofiles/1
  def destroy
    @socialprofile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_socialprofile
      @socialprofile = Socialprofile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def socialprofile_params
      params.require(:socialprofile).permit(:seeker_id, :platform, :link)
    end
end
