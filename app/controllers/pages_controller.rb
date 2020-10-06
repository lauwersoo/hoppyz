class PagesController < ApplicationController
    before_action :authenticate_user, only: [:logintheadmin]


  def home
  end

  def logintheadmin
  end

end
