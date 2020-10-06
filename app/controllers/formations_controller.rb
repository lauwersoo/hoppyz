class FormationsController < ApplicationController

  def index
    @formations = Formation.all
  end

end
