class SchoolClassesController < ApplicationController

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(:title, :room_number)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(schoolclass_params(:title, :room_number))
  end

  private

  def schoolclass_params(*args)
    params.require(:schoolclass).permit(*args)
  end

end
