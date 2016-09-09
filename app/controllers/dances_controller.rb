class DancesController < ApplicationController
  def index
    @dances = Dance.all
    render :index
  end

  def show
    @dance = Dance.find(params[:id])
    render :show
  end


end
