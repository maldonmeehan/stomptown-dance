class InstructionsController < ApplicationController

  def new
    @figure = Figure.find(params[:figure_id])
    @instruction = @figure.instructions.new
  end

  def create
    @figure = Figure.find(params[:figure_id])
    @instruction = @figure.instructions.new(instruction_params)
    if @instruction.save
      flash[:notice] = "Instructions successfully added!"
      redirect_to figure_path(@instruction.figure)
    else
      render :new
    end
  end

  def edit
    @figure = Figure.find(params[:figure_id])
    @instruction = Instruction.find(params[:id])
  end

  def update
    @figure = Figure.find(params[:figure_id])
    @instruction = Instruction.find(params[:id])
    if @instruction.update(instruction_params)
      flash[:notice] = "Instruction successfully eddited!"
      redirect_to figure_path(@instruction.figure)
    else
      render :edit
    end
  end

  def destroy
    @instruction = Instruction.find(params[:id])
    @instruction.destroy
    flash[:notice] = "Instructions successfully deleted!"
    redirect_to figure_path(@instruction.figure)
  end

  private
  def instruction_params
    params.require(:instruction).permit(:number, :move, :call, :instruction, :bars)
  end
end
