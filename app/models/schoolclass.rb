class SchoolClass < ActiveRecord::Base

  def new
  end

  def create
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
