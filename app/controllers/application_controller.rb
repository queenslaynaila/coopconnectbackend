class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def createemployer
    @employer = Employer.new(employer_params)

    if @employer.save
      @account = Account.new(employer_id:@employer.id,email:params[:email],password:params[:password])
        if @account.save
          render json: @employer, status: :created, location: @employer
        else
          render json: @account.errors  , status: :unprocessable_entity
        end
    else
      render json: @employer.errors, status: :unprocessable_entity
    end
  end

  def createseeker
   @seeker = Seeker.new(seeker_params)

    if @seeker.save
      @account = Account.new(seeker_id:@seeker.id,email:params[:email],password:params[:password])
        if @account.save
          render json: @seeker, status: :created, location: @seeker
        else
          render json: @account.errors, status: :unprocessable_entity
        end
    else
      render json: @seeker.errors, status: :unprocessable_entity
    end
  end

  def show
    account = Account.find_by(id: session[:account_id])
    if account
      if account.seeker
        render json: account.seeker
      else
        render json: account.employer
      end
    else
      render json: {error: "Log in"},status: :unauthorized
    end
  end

  private

  def employer_params
    params.permit(:name, :firstname, :secondname )
  end
  def seeker_params
    params.permit(:firstname, :secondname,:gender,:yearofbirth)
  end
  def render_unprocessable_entity_response(invalid)
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
end

end
