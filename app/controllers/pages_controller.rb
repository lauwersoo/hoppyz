class PagesController < ApplicationController
  before_action :authenticate_user!, only: :login_the_admin

  def home
  end

  private

  def login_the_admin
  end

  def restricted_area
  end

end
