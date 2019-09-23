class Instructor
  
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def pass_student(student, test_name)
    BoardingTest.all.each do |test|
      if test.student == student && test.test_name == test_name
        test.status = "passed"
        test
      else 
        BoardingTest.new(student, test_name, )
      end 
    end 
  end 
end
