class StudentsController < ApplicationController

    def index 
        @students = Student.all  
    end

   #show
    def show
        @student = Student.find(params[:id])
        render :show
    end
   
    #new 
    def new
        render :new
    end


    
    
    #find student
    def find_student
        Student.find(params[:id])
    end
    



end