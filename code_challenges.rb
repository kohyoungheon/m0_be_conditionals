## Mild
# Write a Ruby program that defines a variable that stores an Integer. 
#The program should print out the String "even" if the Integer is even, and the String "odd" if the Integer is odd.
number_of_onions = 23291
if number_of_onions.even?
    puts "You have an even number of onions"
else
    puts "You have an odd number of onions"
end


# ## Medium
# Using the following variables:
good_driving_record = false
age = 21
# Write a program that evaluates the status of the variables above, and uses logic to print one of three possible messages:
# - If the driving record is good and user is over 25 years old, they should get a discount on the car rental
# - If the user either has a good record or is over 25 years old, they should pay full price
# - If the user is not over 25 and has a bad driving record, they need to have someone else sign for the rental
if good_driving_record && age >= 25
    puts "Congratulations! You qualify for a discount!"
elsif good_driving_record || age >= 25
    puts "Sorry, you dont qualify for our discount."
else !good_driving_record && age < 25
    puts "Sorry, you must have someone else sign for the rental vehicle."
end


# ## Spicy
# Write a Ruby program that prints out a String or Integer: 
# The printed value will depend on the value of an Integer. 
# If the Integer is a multiple of 3, print "Fizz". 
# If the Integer is a multiple of 5, print "Buzz". 
# If the Integer is a multiple of both 3 and 5, print "FizzBuzz". 
# If the Integer is not a multiple of either, print the Integer itself.


$continue = true
def fizzbuzz
    
    puts "-------------------------"
    puts "Hello! Please enter a whole number!"
    magic_number = gets.chomp
    magic_number = magic_number.to_i
    if magic_number % 3 == 0 && magic_number % 5 == 0
        puts "FizzBuzz"
    elsif magic_number % 3 == 0
        puts "Fizz"
    elsif magic_number % 5 == 0
        puts "Buzz"
    else
        puts "Not a multiple of 3 or 5, the magic numuber is #{magic_number}"
    end
    puts "Would you like to play again? (Y/N)"
    reply = gets.chomp.downcase
    if reply == "y"
       $continue = true
    else
        $continue = false
        puts "Okay Bye"
    end
end

while $continue
    fizzbuzz
end