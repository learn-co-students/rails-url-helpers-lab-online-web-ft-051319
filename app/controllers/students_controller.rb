
class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    if @student.active

      phrase = "active"
    else
      phrase = "inactive"
    end
      @studentactive= "This student is currently " + "#{phrase}."
  end

  def activate_student
    set_student
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
    @student.save
  #  byebug
    redirect_to student_path(@student.id)
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end
