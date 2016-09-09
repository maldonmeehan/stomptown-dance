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

  def edit
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:id])
  end

  def update
    @course = Course.find(params[:course_id])
    @section= Section.find(params[:id])
    if @section.update(section_params)
      redirect_to course_path(@section.course)
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to course_path(@section.course)
  end

  private
    def section_params
      params.require(:section).permit(:name)
    end
end