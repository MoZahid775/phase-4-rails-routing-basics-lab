class StudentsController < ApplicationController

    
  def index
  
    # list = Student.all
    students= Student.all
    render json: students
  end

  def last
  
   students=Student.all
   arr = students.pluck(:last_name)
   render json: arr


  end

  def full
    
    students=Student.all.map {|student|  student.to_s}
    render json: students
     
  end  



end
