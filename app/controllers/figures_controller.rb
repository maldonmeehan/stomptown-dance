class FiguresController < ApplicationController
  def new
    @dance = Dance.find(params[:dance_id])
    @figure = @dance.figures.new
  end

  def show
    @figure = Figure.find(params[:id])
  end

  def create
    @dance = Dance.find(params[:dance_id])
    @figure = @dance.figures.new(figure_params)
    if @figure.save
      flash[:notice] = "Figure had successfully added!"
      redirect_to dance_path(@dance)
    else
      render :new
    end
  end

  def edit
    @dance = Dance.find(params[:dance_id])
    @figure = Figure.find(params[:id])
  end

  def update
    @dance = Dance.find(params[:dance_id])
    @figure = Figure.find(params[:id])
    if @figure.update(figure_params)
      flash[:notice] = "Figre successfully edited!"
      redirect_to dance_path(@figure.dance)
    else
      render :edit
    end
  end

  def destroy
    @figure = Figure.find(params[:id])
    @figure.destroy
    flash[:notice] = "Figure successfully deleted!"
    redirect_to dance_path(@figure.dance)
  end

  private
  def figure_params
    params.require(:figure).permit(:number, :title, :tune, :bar_total)
  end
end
