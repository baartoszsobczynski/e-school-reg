class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    if @school_class.save
      flash[:success] = "You have successfully added a new class."
      redirect_to school_classes_path
    else
      render 'new'
    end
  end

  def destroy
    @school_class = SchoolClass.find(params[:id])
    @school_class.destroy

    flash[:success] ="School Class '#{@school_class.level}#{@school_class.indication}' was deleted"

    redirect_to school_classes_path
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    if @school_class.update_attributes(school_class_params)
      flash[:success] = "School class updated"
      redirect_to @school_class
    else
      render 'edit'
    end
  end

  private

  def school_class_params
    params.require(:school_class).permit(:level, :indication)
  end
end
