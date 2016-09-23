class CoursesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def edit
    @course = Course.find(params[:id])
    respond_to do |format|
      format.html { render :new }
      format.js
    end
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "Course successfully added!"
      respond_to do |format|
        format.html { redirect_to courses_path }
        format.js
      end
    else
      render :new
    end
  end

  def update
    @course= Course.find(params[:id])
    if @course.update(course_params)
      flash[:notice] = "Course successfully eddited!"
      redirect_to courses_path
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:notice] = "Course successfully deleted!"
    redirect_to courses_path
  end

  private
  def course_params
    params.require(:course).permit(:name)
  end
end
