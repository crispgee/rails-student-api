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
      render json: {errors : student.errors.full_messages}, status: :unprocessable_entity
    end
  end
  def update 
    if @student.update(student_params)
      render json: @student, status: :ok
    else 
      render json: {errors: @student.errors.full_messages}, status: :unprocessable_entity
    end 
  end 
  def destroy
    @student.destroy
    head :no_content
    end 
  end
  private
  def set_student
    @student = Student.find(params[:id])
  end
  def student_params
    params.require(:student).permit(:firstname,:lastname,:age,:date_of_birth)
  end
  def record_not_found
    render json: {error: "Student not found"} status: :not_found
  end
end
