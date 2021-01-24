class Person 
    def initialize(first_name, last_name)
        @first_name = first_name
        @last_name = last_name
    end 

    def name 
        "#{@first_name} #{@last_name}"
    end 

    def greeting
        "Hi, my name is #{name}"
    end 
end 


class Student < Person
    def initialize(f, l)
        super(f, l)
    end 

    def learn
        "I get it!"
    end 
end 

class Instructor < Person
    def initialize(f, l)
        super(f, l)
    end 

    def teach
        "Everything in Ruby is an object"
    end 
end 

p sam = Instructor.new("Sam", "Smith")
p sam.greeting 
p samantha = Student.new("Samantha", "Tims") 
p samantha.greeting
p sam.teach 
p samantha.learn 
p samantha.teach #the teach method is in the Instructor class, 
#and while Intructor is a Person, and Student is a person, they do 
#not share code written in each individual class 