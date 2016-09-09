class InstructionsController < ApplicationController
  def new
    @dance = Dance.find(params[:dance_id])
    @instruction = @dance.instructions.new
  end

  def create
    @dance = Dance.find(params[:dance_id])
    @instruction = @dance.instructions.new(instruction_params)
    if @instruction.save
      flash[:notice] = "Instructions successfully added!"      
      redirect_to dance_path(@instruction.dance)
    else
      render :new
    end
  end

  def edit
    @dance = Dance.find(params[:dance_id])
    @instruction = Instruction.find(params[:id])
  end

  def update
    @dance = Dance.find(params[:dance_id])
    @instruction = Instruction.find(params[:id])
    if @instruction.update(instruction_params)
      flash[:notice] = "Instruction successfully eddited!"
      redirect_to dance_path(@instruction.dance)
    else
      render :edit
    end
  end

  def destroy
    @instruction = Instruction.find(params[:id])
    @instruction.destroy
    flash[:notice] = "Instructions successfully deleted!"
    redirect_to dance_path(@instruction.dance)
  end

private
  def instruction_params
    params.require(:instruction).permit(:number, :move, :call, :instruction, :bars)
  end

end
