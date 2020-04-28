class SchoolClassesController < ApplicationController

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.new(:title, :room_number)
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def schoolclass_params(*args)
    params.require(:schoolclass).permit(*args)
  end

end
