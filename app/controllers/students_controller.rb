class StudentsController < ApplicationController 
  def new 
    @student = Student.new 
  end 

  def index
    @students = Student.all
  end 

  def show 
    @student = Student.find(params[:id])
  end 

  def create 
    @student = Student.create(student_params)

    redirect_to student_path(@student)
  end

  def destroy 
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_path
  end 

    private

    def student_params
      params.require(:student).permit(:name)
    end 
end 