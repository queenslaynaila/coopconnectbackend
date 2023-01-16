class EmployersController < ApplicationController
  before_action :set_employer, only: %i[ show update destroy ]

  # GET /employers
  def index
    @employers = Employer.all

    render json: @employers
  end

  # GET /employers/1
  def show
    render json: @employer
  end

  # POST /employers
  def create
    @employer = Employer.new(employer_params)

    if @employer.save
      render json: @employer, status: :created, location: @employer
    else
      render json: @employer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employers/1
  def update
    if @employer.update(employer_params)
      render json: @employer
    else
      render json: @employer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employers/1
  def destroy
    @employer.destroy
  end
  def postedjobs
    @employer = Employer.find(params[:id])
    render json: @employer.jobs
  end
  def savedprofiles
    @employer = Employer.find(params[:id])
    render json: @employer.savedprofiles
  end
  def postedinternships
    @employer = Employer.find(params[:id])
    render json: @employer.internships
  end
  def seekersapplied
    @employer = Employer.find(params[:id])
    render json: @employer.jobapplications
  end



  private

   
    # Use callbacks to share common setup or constraints between actions.
    def set_employer
      @employer = Employer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employer_params
      params.require(:employer).permit(:name, :firstname, :secondname, :companytype, :websiteurl, :description, :designation, :user_type )
    end
end
