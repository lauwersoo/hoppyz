class BoxsController < ApplicationController

  def index
    @boxs = Box.all
  end

end
