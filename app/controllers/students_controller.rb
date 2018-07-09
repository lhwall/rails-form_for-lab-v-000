class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student = Student.create({:first_name => params[:students][:first_name], :last_name => params[:students][:last_name]})
    @student.save
    #byebug
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    @student.save
  end

end
