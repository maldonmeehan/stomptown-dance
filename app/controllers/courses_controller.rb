class CoursesController < ApplicationController
  def index
    @courses = Course.all
    render :index
  end

  def show
    @course = Course.find(params[:id])
    render :show
  end

  def new
    @course = Course.new
    render :new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to  courses_path
    else
      render :new
    end
  end

private
  def course_params
    params.require(:course).permit(:name)
  end


end
