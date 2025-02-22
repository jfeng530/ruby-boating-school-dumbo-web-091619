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
    BoatingTest.all.each do |test|
      if test.student == student && test.test_name == test_name
        test.test_status = "passed"
        test
      else 
        return BoatingTest.new(student, test_name, "passed", self)
      end 
    end 
  end
  
  def fail_student(student, test_name)
    BoatingTest.all.each do |test|
      if test.student == student && test.test_name == test_name
        test.test_status = "failed"
        test
      else 
        return BoatingTest.new(student, test_name, "failed", self)
      end 
    end 
  end 
  
end
