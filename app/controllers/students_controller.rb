class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(student_params)

    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
