class CoursesController < ApplicationController
  before_action :find_course, only: %i[show edit update]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = current_user.courses.new(course_params)
    if @course.save
      flash[:success] = "Course suessfully created"
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
  end



  private

  def find_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(*Course::ATTRIBUTE_WHITELIST)
  end
end
