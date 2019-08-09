class StudentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :find_student, only: [:show, :edit, :update]


    def index 
        @students = Student.all  
        
    end

   #show
    def show
        # @student = Student.find(params[:id])
    end
   
    #new 
    def new
        @student = Student.new
        render :new
    end
    

    def edit
        # @student  = Student.find(params[:id])

    end
    #update
    def update
        # @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)

    end
    #create
    def create
        
        @student = Student.new(student_params)
        @student.save
        redirect_to @student
    end



    #find student
    def find_student
        Student.find(params[:id])
    end




    private
    def student_params
        params.require(:student).permit(:name, :age, :grade, :location)
      end
        
        
        
        
        
        



end