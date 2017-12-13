class StudentsController < ApplicationController 
  def new 
    @student = Student.new 
  end 

  def index
    @students = Student.all
  end 

  def create 
    @student = Student.create(student_params)
  end

    private

    def student_params
      params.require(:student).permit(:name)
    end 
end 