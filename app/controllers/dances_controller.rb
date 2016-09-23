class DancesController < ApplicationController
  def index
    @dances = Dance.all
  end

  def show
    @dance = Dance.find(params[:id])
  end

  def new
    @dance = Dance.new
  end

  def create
    @dance = Dance.new(dance_params)
    if @dance.save
      respond_to do |format|
        format.html { redirect_to dances_path }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @dance = Dance.find(params[:id])
  end

  def update
    @dance= Dance.find(params[:id])
    if @dance.update(dance_params)
      flash[:notice] = "Dance successfully eddited!"
      redirect_to dances_path
    else
      render :edit
    end
  end

  def destroy
    @dance = Dance.find(params[:id])
    @dance.destroy
    flash[:notice] = "Dance successfully deleted!"
    redirect_to dances_path
  end

  private
  def dance_params
    params.require(:dance).permit(:name, :county, :style, :note)
  end
end
