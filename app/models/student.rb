class Student<ApplicationRecord
	has_many :subject_marks
	@students = Student.all
	

  def total_marks
    (@student.try(:sum, :maths) || 0) + (@student.try(:sum, :science) || 0) + (@student.try(:sum, :english) || 0)


  end
	
end