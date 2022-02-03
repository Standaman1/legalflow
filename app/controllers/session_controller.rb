class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:email]
    if user.present? && user.authenticate(params[:password])

      session[:user_id] = user.id
      redirect_to '/templates'

    else
      flash[:error] = 'Invalid email or password'
      redirect_to login_path
    end
  end #Create()

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end