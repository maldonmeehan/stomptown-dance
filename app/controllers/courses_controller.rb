class CoursesController < ApplicationController
  def index
    @courses = Course.all
    render :index
  end

  def show
    @course = Course.find(params[:id])
    render :show
  end

end
