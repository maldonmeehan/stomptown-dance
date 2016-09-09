class DancesController < ApplicationController
  def index
    @dances = Dance.all
    render :index
  end

  def show
    @dance = Dance.find(params[:id])
    render :show
  end

  def new
    @dance = Dance.new
    render :new
  end

  def create
    @dance = Dance.new(dance_params)
    if @dance.save
      redirect_to  dances_path
    else
      render :new
    end
  end

  def edit
    @dance = Dance.find(params[:id])
    render :edit
  end

  def update
    @dance= Dance.find(params[:id])
    if @dance.update(dance_params)
      redirect_to dances_path
    else
      render :edit
    end
  end

  def destroy
    @dance = Dance.find(params[:id])
    @dance.destroy
    redirect_to dances_path
  end

  private
    def dance_params
      params.require(:dance).permit(:name)
    end

end
