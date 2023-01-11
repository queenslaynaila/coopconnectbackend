class SeekersController < ApplicationController
  before_action :set_seeker, only: %i[ show update destroy ]

  # GET /seekers
  def index
    @seekers = Seeker.all

    render json: @seekers
  end

  # GET /seekers/1
  def show
    render json: @seeker
  end

  # POST /seekers
  def create
    @seeker = Seeker.new(seeker_params)

    if @seeker.save
      render json: @seeker, status: :created, location: @seeker
    else
      render json: @seeker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /seekers/1
  def update
    if @seeker.update(seeker_params)
      render json: @seeker
    else
      render json: @seeker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seekers/1
  def destroy
    @seeker.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seeker
      @seeker = Seeker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seeker_params
      params.require(:seeker).permit( :firstname, :secondname, :phone, :country, :city, :about, :usertype)
    end
end
