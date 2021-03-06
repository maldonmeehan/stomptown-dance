class SectionsController < ApplicationController

  def new
    @course = Course.find(params[:course_id])
    @section = @course.sections.new
  end

  def show
    @section = Section.find(params[:id])
  end

  def create
    @course = Course.find(params[:course_id])
    @section = @course.sections.new(section_params)
    if @section.save
      flash[:notice] = "Session successfully added!"
      respond_to do |format|
        format.html { redirect_to course_path(@section.course) }
        format.js
      end
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:course_id])
    @section = Section.find(params[:id])
    respond_to do |format|
      format.html { render :edit }
      format.js
    end
  end

  def update
    @course = Course.find(params[:course_id])
    @section= Section.find(params[:id])
    if @section.update(section_params)
      flash[:notice] = "Session successfully edited!"
      redirect_to course_path(@section.course)
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Session successfully deleted!"
    redirect_to course_path(@section.course)
  end

  private
  def section_params
    params.require(:section).permit(:name, :level, :number, :course_id)
  end
end
