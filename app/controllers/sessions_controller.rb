class SessionsController < ApplicationController

  # POST '/login'
  def create
      account = Account.find_by(email:params[:email])
      if account&.authenticate(params[:password])
          session[:account_id] = account.id
          if account.seeker
            render json: account.seeker, status: :created
          else
           render json: account.employer,status: :created
         end
      else
         render json: {error: "Invalid email or password"}, status: :unauthorized
      end
  end

  # DELETE '/logout'
  def destroy
      session.delete :account_id
      head :no_content
  end
  def show
    user = Seeker.find_by(id: session[:seeker_id])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end


  private
  def employer_params
    params.permit(:name, :firstname, :secondname, :companytype, :websiteurl, :description, :designation, :user_type )
  end
  def account_params
    params.permit(:seeker_id,:employer_id,:email, :password)
  end
end
