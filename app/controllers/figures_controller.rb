class FiguresController < ApplicationController
  def new
    @dance = Dance.find(params[:dance_id])
    @figure = @dance.figures.new
  end

  def create
    @dance = Dance.find(params[:dance_id])
    @figure = @dance.figures.new(figure_params)
    if @figure.save
      flash[:notice] = "Figure had successfully added!"
      redirect_to dance_path(@figure.dance)
    else
      render :new
    end
  end

  private
  def figure_params
    params.require(:figure).permit(:number, :title, :tune, :bar_total)
  end
end
