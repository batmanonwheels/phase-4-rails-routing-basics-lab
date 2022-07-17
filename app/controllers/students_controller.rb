class StudentsController < ApplicationController
  def index
    render json: Student.all
  end

  def grades
    render json: Student.all.sort_by { |student| student.grade}.reverse
  end

  def highest_grade
    render json: Student.all.max_by { |student| student.grade}
  end
end
