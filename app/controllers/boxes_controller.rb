class BoxesController < ApplicationController

  before_action :allow_only_admin

  def index
    @boxes = Box.all
  end

  def show
    @box = Box.find(params[:id])
  end

  def new
    @box = Box.new
  end

  def create
    @user = current_user
    @box = Box.new(box_params)
    @box.user = @user
    if @box.save
      @box.save
      redirect_to boxes_path
    else
      render :new
    end
  end

  def edit
    @box = Box.find(params[:id])
  end

  def update
    @box = Box.find(params[:id])
    if @box.update(box_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
   @box = Box.find(params[:id])
   @box.destroy
   redirect_to boxes_path
  end

  private

  def allow_only_admin
    unless current_user
      redirect_to restricted_url_path
    end
  end

  def box_params
    params.require(:box).permit(:title, :description, :price)
  end

end
