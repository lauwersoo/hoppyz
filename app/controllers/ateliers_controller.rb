class AteliersController < ApplicationController


  def index
    @ateliers = Atelier.all
  end

  def show
    @atelier = Atelier.find(params[:id])
  end

  def new
    @atelier = Atelier.new
  end

  def create
    @user = current_user
    @atelier = Atelier.new(atelier_params)
    @atelier.user = @user
    if @atelier.save
      @atelier.save
      redirect_to ateliers_path
    end
  end

  def edit
    @atelier = Atelier.find(params[:id])
  end

  def update
    @atelier = Atelier.find(params[:id])
    if @atelier.update(atelier_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @atelier = Atelier.find(params[:id])
    @atelier.destroy
    redirect_to ateliers_path
  end

  private

  def atelier_params
    params.require(:atelier).permit(:title, :description, :price)
  end

end
