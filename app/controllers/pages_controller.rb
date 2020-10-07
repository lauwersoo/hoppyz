class PagesController < ApplicationController
  before_action :authenticate_user!, only: :admin_platform

  def home
  end

  private

  def admin_platform
  end

  def restricted_area
  end

end
