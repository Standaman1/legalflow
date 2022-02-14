class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.save
      redirect_to login_path, notice: "Successfully created account"
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]

  end

  def show
    @users = User.all
  end

  def destroy
    @user = User.find params[:id]

  end



  private 
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role, :name)
  end

end
