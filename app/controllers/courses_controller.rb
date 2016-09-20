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
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "Course successfully added!"
      redirect_to course_path(@course)
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
