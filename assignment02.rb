class Farm 

@@fields = []

    def initialize(type, size)
        @type = type
        @size = size #in hectares 
        @produce = 0 #amount of food ever produced  
    end 

    attr_accessor :type, :produce

    def self.add_field(type, size)
        field = Farm.new(type, size) 
         @@fields << field 
         return field 
    end 

    def self.all_fields
        @@fields
    end 

    def self.harvest
        total_harvest = 0
        @@fields.each do |field|
        print "How much food (in hectares) did you collect from #{field.type}? "
        user_input = gets.chomp.to_i 
        field.produce += user_input 
        puts field.produce 
        total_harvest += user_input
        end 
        "In total you have collected #{total_harvest} hectares of food" 
    end 

    def self.relax
        print "Which field would you like to relax in today? "
        user_input = gets.chomp 
        "What a beautiful #{user_input} field, sit down and relax in it" 
    end 

    def self.check_status
        puts "Enter the field you would like to check the status of: "
        user_input = gets.chomp
        @@fields.each do |field|
        if user_input == field.type  
            return field
        end 
        end 
        return "not found" 
    end 


end 

# Farm.add_field("corn", 20)
# Farm.add_field("wheat", 30) 
# p Farm.all_fields 
# p Farm.harvest 
# p Farm.all_fields 
# p Farm.relax

# p Farm.harvest 
# p Farm.all_fields 
# p Farm.check_status