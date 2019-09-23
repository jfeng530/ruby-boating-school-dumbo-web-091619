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
      if test.
    end 
  end 
end
