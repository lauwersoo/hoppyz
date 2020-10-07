class PagesController < ApplicationController
  before_action :authenticate_user!, only: :login_the_admin

  def home
  end

  def admin_home

  end

  private

  def login_the_admin
    if current_user.is_connected?
      redirect_to admin_root_path
    end
  end

  def restricted_area
  end

end
