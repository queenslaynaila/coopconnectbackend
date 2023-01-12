class SessionsController < ApplicationController

  # POST '/login'
  def create
    account = Account.find_by(username: params[:email])
    if account&.authenticate(params[:password])
      session[:account_id] = account.id
      render json: account, status: :created
    else
      render json: { error: "Invalid username or password" }, status: :unauthorized
    end
  end

  # DELETE '/logout'
  def destroy
    session.delete :account_id
    head :no_content
  end
end
