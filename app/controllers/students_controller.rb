class StudentsController<ApplicationController
	def show
        @student=Student.find(params[:id])
    end
    def index
        @students=Student.where("students.student_name LIKE ?",["%#{params[:search]}%"])
        @students=Student.where("students.roll LIKE ?",["%#{params[:search]}%"])
    end
    def new
        @student=Student.new
    end
    def create
        @student=Student.new(params.require(:student).permit(:student_name,:roll,:section,:maths,:english,:science,:total))
         
         if @student.save
            flash[:notice]="Data was inserted successfully."
            redirect_to @student
         else
            render 'new'
         end
    end
    def edit 
        @student=Student.find(params[:id])
    end

    def update
         @student=Student.find(params[:id])
        if  @student.update(params.require(:student).permit(:student_name,:roll,:section,:maths,:english,:science,:total))
             flash[:notice]="Data updated successfully."
             redirect_to @student
        else
             render 'edit'
        end
   end
   def destroy
      @student=Student.find(params[:id])
      @student.destroy
      flash[:success] = "Data successfully destroyed."
      redirect_to students_url
   end
end
