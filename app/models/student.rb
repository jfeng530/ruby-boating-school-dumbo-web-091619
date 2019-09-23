class Student
  
  attr_accessor :first_name
  @@all = []
  
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end 
  
  def add_boating_test(student, boat_test, test_status, instructor)
    BoatingTest.new
  end 
  
  def self.find_student(first_name)
    Student.all.find {|student| student.first_name == first_name }
  end
  
  def grade_percentage
    
  end 
  
end
