class StudentsController < ApplicationController
  before_action :set_student, only: [:show,:update,:destroy]

  def index
    render json: Student.all 
  end 
   
  def show 
    render json: @student
  end
  def create 
    student = Student.new(student_params)
    if student.save
      render json: student, status: :created 
    else 
      render json: student.errors, staus: :unprocessable_entity
    end
  end
  def update 
    if @student.update(student_params)
      render json: @student, status: :ok
    else 
      render json: @student.error, status: :no_content
    end 
  end 
  def destroy
    if @student.destroy
      render json: {message: "User deleted successfully"}, status: :ok
    else 
      render status: :no_content
    end 
  end
  private
  def set_student
    @student = Student.find(params[:id])
  end
  def student_params
    params.require(:student).permit(:firstname,:lastname,:age,:date_of_birth)
  end
end
