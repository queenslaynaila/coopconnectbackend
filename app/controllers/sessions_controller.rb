class SessionsController < ApplicationController

  # POST '/login'
  def create
      account = Account.find_by(email:params[:email])
      if account&.authenticate(params[:password])
          if account.seeker
            render json: account.seeker, status: :created
          else
           render json: account.employer,status: :created
         end
      else
         render json: {error: "Invalid email or password"}, status: :unauthorized
      end
  end

  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  # DELETE '/logout'
  def destroy
      session.delete :account_id
      head :no_content
  end


end
