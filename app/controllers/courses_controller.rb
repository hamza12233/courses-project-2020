class CoursesController < ApplicationController
  def new; end

  def create
  end

  def edit; end

  def update
  end



  private

  def course_params
    param.require(:course).permit(*Course::ATTRIBUTE_WHITELIST)
  end
end
