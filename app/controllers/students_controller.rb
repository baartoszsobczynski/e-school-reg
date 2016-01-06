class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "You have successfully added a new student."
      redirect_to students_path
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      flash[:success] = "Student updated"
      redirect_to @student
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    flash[:success] ="Student '#{@student.first_name} #{@student.last_name}' was deleted"

    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
