class SavedcompaniesController < ApplicationController
  before_action :set_savedcompany, only: %i[ show update destroy ]

   # GET /savedprofiles
  def index
    @savedcompanies = Savedcompany.all

    render json: @savedcompanies
  end

  # GET /savedprofiles/1
  def show
    render json: @savedcompany
  end

  # POST /savedprofiles
  def create
    @savedcompany =  Savedcompany.new(savedcompany_params)

    if @savedcompany.save
      render json: @savedcompany, status: :created, location: @savedprofile
    else
      render json: @savedcompany.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /savedprofiles/1
  def update
    if @savedcompany.update(@savedcompany_params)
      render json: @savedcompany
    else
      render json: @savedcompany.errors, status: :unprocessable_entity
    end
  end

  # DELETE /savedprofiles/1
  def destroy
    @savedcompany.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_savedcompany
      @savedcompany = Savedcompany.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def savedcompany_params
      params.permit(:employer_id, :seeker_id)
    end
end
