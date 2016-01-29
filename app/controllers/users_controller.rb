class UsersController < ApplicationController
  def new
    if current_user
      redirect_to login_path
    else
      @user = User.new
    end
  end

  def create
    @user = User.create(user_params)
    if @user
      redirect_to products_url, notice: "Signed up!"
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
