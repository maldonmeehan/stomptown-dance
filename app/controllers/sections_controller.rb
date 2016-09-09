class SectionsController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @section = @course.sections.new
  end

  def create
    @course = Course.find(params[:course_id])
    @section = @course.sections.new(section_params)
    if @section.save
      redirect_to course_path(@section.course)
    else
      render :new
    end
  end

private
  def section_params
    params.require(:section).permit(:name)
  end
end
