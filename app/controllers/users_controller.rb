class UsersController < ApplicationController
  # before_action :allow_only_admin

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end

  def allow_only_admin
    unless current_user
      redirect_to restricted_url_path
    end
  end

end
