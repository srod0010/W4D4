class UsersController < ApplicationController
  def new
    @user = User.new(user_params)
    render :new
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
