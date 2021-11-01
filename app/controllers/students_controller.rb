class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        render json: Student.order("grade DESC")
    end

    def highest_grade
        render json: Student.order("grade DESC").first
    end
end
