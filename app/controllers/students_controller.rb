class StudentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :find_student, only: [:show, :edit, :update, :destroy]
    
    
    def index #NEEDS ALL STUDENTS
        @students = Student.all  
        
    end
    
    #SHOW needs INSTANCE of logged STUDENT to display
    def show 
        # @student = Student.find(params[:id])
    end
    
    #NEW - FORM needs INSTANCE of Student.NEW , for UPDATE ACTION to instanciate a new student
    def new 
        @student = Student.new
    end
    
    #create
    def create
         @student = Student.create(student_params)
        redirect_to @student
    end



    #EDIT - FORM to take updated information for STUDENT:id pass it into UPDATE
    def edit 
        # @student  = Student.new
    end
    
    #UPDATE takes PARMAMS from EDIT FORM and updates Student:id info
    def update 
        # @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to @student
        
    end

    def destroy
        @student.destroy
        redirect_to students_path
    end
    
    
    
    #find student
    def find_student
        @student = Student.find(params[:id])
    end




    private
    def student_params
        params.require(:student).permit(:name, :age, :grade, :location)
      end
        
        
        
        
        
        



end