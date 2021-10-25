class Person 
    def initialize(name)
        @name = name 
    end 

    def greeting
        "Hi, my name is #{@name}"
    end 
end 


class Student < Person
    def initialize(n)
        super(n) 
    end 

    def learn
        "I get it!"
    end 
end 

class Instructor < Person
    def initialize(n)
        super(n)
    end 

    def teach
        "Everything in Ruby is an object"
    end 
end 

p sam = Instructor.new("Sam")
p sam.greeting 
p samantha = Student.new("Samantha") 
p samantha.greeting 
p sam.teach 
p samantha.learn 
p samantha.teach #the teach method is in the Instructor class, 
#and while Intructor is a Person, and Student is a person, they do 
#not share code written in each individual class 