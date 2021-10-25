class Book

@@on_shelf = []
@@on_loan = []

def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
end 

attr_accessor :due_date 

def borrow
    answer = self.lent_out? 
    if answer == "true"
        return false #not able to borrow book
    else 
        due_date = self.current_due_date
        @@on_loan << self
        return true 
    end    
end 

def return_to_library

end 

def lent_out?
    @@on_loan.include?(self)
end 

def self.create(title, author, isbn)
    new_book = Book.new(title, author, isbn) 
    @@on_shelf << new_book 
    new_book 
end

def self.current_due_date
    Time.now + (60*60*24*14) 
end 

def self.overdue_books
end

def self.browse
    random_book = @@on_shelf.sample  
    random_book
end 

def self.available
    @@on_shelf 
end 

def self.borrowed
    @@on_loan 
end 

end 

p ho = Book.create("HOMEBOUND", "T. Kestenbaum", 978-1-60091-719-6)
p li = Book.create("Lifelines", "C.Saphir", 1-4226-2596-6)
p pe = Book.create("Petals", "Y. Mermelstein", 978-1-60091-422-5)
p Book.available 
p Book.borrowed
p Book.browse
p ho.lent_out?
# p Book.current_due_date 
# p pe.borrow 