class InstructionsController < ApplicationController
  def new
    @dance = Dance.find(params[:dance_id])
    @instruction = @dance.instructions.new
  end

  def create
    @dance = Dance.find(params[:dance_id])
    @instruction = @dance.instructions.new(instruction_params)
    if @instruction.save
      redirect_to dance_path(@instruction.dance)
    else
      render :new
    end
  end

private
  def instruction_params
    params.require(:instruction).permit(:number, :move, :call, :instruction, :bars)
  end

end
