class DancesController < ApplicationController
  def index
    @dances = Dance.all
  end

  def show
    @dance = Dance.find(params[:id])
  end

  def new
    @dance = Dance.new
    respond_to do |format|
      format.html { render :new }
      format.js
    end
  end

  def create
    @dance = Dance.new(dance_params)
    if @dance.save
      flash[:notice] = "Dance successfully added!"
      redirect_to  dances_path(@dance)
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
