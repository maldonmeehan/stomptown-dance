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

private
  def dance_params
    params.require(:dance).permit(:name)
  end

end
