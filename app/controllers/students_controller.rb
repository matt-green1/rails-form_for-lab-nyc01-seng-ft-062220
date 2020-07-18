class StudentsController < ApplicationController
    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.update(student_params)
        redirect_to student_path(@student)
    end

    private

    def student_params
        params.require(:student).permit!
        #tried the below line but it didn't work - maybe because of created at and updated at? changed to match solution
        #(:first_name, :last_name, :created_at, :updated_at)
    end
end