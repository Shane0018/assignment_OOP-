class BankAccount 

@@interest_rate = 1.03 #interest rate (floater) 
@@accounts = [] #list of all bank accounts in the bank

def initialize
    @balance = 0 
end 

attr_accessor :balance 

def deposit(num) 
    @balance += num 
    @balance
end 

def withdraw(num)
    @balance -= num
    @balance
end 

def self.create 
    new_account = BankAccount.new
    @@accounts << new_account 
    new_account 
end 

def self.total_funds 
    total = 0
    @@accounts.each do |account|
        total += account.balance
    end 
    total 
end 

def self.interest_time
    @@accounts.each do |account| account.balance += @@interest_rate end 
end 

end 

# p a = BankAccount.create  
# p a.deposit(50) 
# p a.withdraw(10) 
# p b = BankAccount.create 

# p BankAccount.total_funds 

my_account = BankAccount.create
your_account = BankAccount.create
puts my_account.balance # 0
puts BankAccount.total_funds # 0
my_account.deposit(200)
your_account.deposit(1000)
puts my_account.balance # 200
puts your_account.balance # 1000
puts BankAccount.total_funds # 1200
BankAccount.interest_time
puts my_account.balance # 202.0
puts your_account.balance # 1010.0
puts BankAccount.total_funds # 1212.0
my_account.withdraw(50)
puts my_account.balance # 152.0
puts BankAccount.total_funds # 1162.0
