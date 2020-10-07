class FormationsController < ApplicationController
    # before_action :authenticate_user!
    before_action :allow_only_admin

  def index
    @formations = Formation.all
  end

  def show
    @formation = Formation.find(params[:id])
  end

  def new
    @formation = Formation.new
  end

  def create
    @formation = Formation.new(formation_params)
    if @formation.valid?
      @formation.save
    else
      render :new
    end
  end

  def edit
    @formation = Foramtion.find(params[:id])
  end

  def update
    @formation = Formation.find(params[:id])
    if @formation.update(formation_params)
      redirect_to root_path(@formation)
    else
      render :edit
    end
  end

  def destroy
    @formation = Formation.find(params[:id])
    @formation.destroy
    redirect_to root_path
  end

  def allow_only_admin
    unless current_user
      redirect_to restricted_url_path
    end
  end

  private

  def formation_params
    params.require(:formation).permit(:title, :description, :price)
  end

end
