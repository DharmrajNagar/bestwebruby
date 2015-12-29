class StudentsController < ApplicationController

       helper_method :sort_column, :sort_direction

	def index 
	
       	 if params[:search]
	     @students = Student.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page => 10)
	 else	
	      @students = Student.all.order(sort_column + " " + sort_direction).paginate(:page => params[:page], :per_page =>10)
              #@students = Student.not(first_name: 'Dharmraj').paginate(:page => params[:page], :per_page =>10)

	 end
	

      end

	def show 
		@student = Student.find(params[:id])
		
	end

	def new 
		@student = Student.new
		 @states = State.all.order("created_at desc")


	end

	def create
	  
	  @student = Student.new(student_params)
	 
	 
	  if @student.save
            flash[:success] = "Your student has been saved.!"
	    redirect_to @student
	  else
	    render 'new'
	  end
	end

	def edit
	    @student = Student.find(params[:id])
	  end 

	def update
	  @student = Student.find(params[:id])
	 
	  if @student.update(student_params)
	    #format.html { redirect_to @student, notice: 'Student was successfully updated.' }
            #format.json { head :no_content }
            flash[:success] = "Your student has been updated.!"
	    redirect_to @student
	  else
	    render 'edit'
	  end
	end

	def destroy
	  @student = Student.find(params[:id])
	  @student.destroy
	 
	  redirect_to students_path
	end
	
	private
	  def student_params
	    params.require(:student).permit(:first_name, :last_name, :f_name, :date_of_birth, :age, :blood_group, :mobile, :address_line_1, :address_line_2, :city_id, :state_id, :country_id, :zip_code, :image, :resume, :last_ip)
	  end


	def sort_column
    Student.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
