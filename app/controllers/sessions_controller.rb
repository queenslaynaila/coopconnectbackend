class SessionsController < ApplicationController
    skip_before_action :authorized, only: :create
  # POST '/login'
  def create
      account = Account.find_by(email:params[:email])
      if account&.authenticate(params[:password])
          session[:account_id] = account.id
          render json: account, status: :created
      else
         render json: {error: "Invalid email or password"}, status: :unauthorized
      end
  end

  # DELETE '/logout'
  def destroy
      session.delete :account_id
      head :no_content
  end

end
