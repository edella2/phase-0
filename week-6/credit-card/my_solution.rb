=begin
# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Some 16 digit string
# Output: true or false 
# Steps:

#define class CreditCard - initialized by card_num (integer)
make sure integer is 16 digit / make sure no letters / other character entered
raise arguent error if above applies



#define check_card (method) - no argument
declare card_array (array)
convert integer card_num to string -> split into array and set equal to card_array set to_i after 
declare x as  0
WHILE x >= array.length
card_array at x multiply by 2
x +=2
END

declare variable sum equal to 0

EACH array  digit
  IF digit > 9
  digit to string split string to an array convert to integer
    EACH digit num
    sum += num
    END
  else
  sum += digit
  END
END

if sum is divisible by 10 
return true
else 
return false




# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


=end


class CreditCard
  
  def initialize(card_num)
    if card_num.to_s.length != 16
      raise ArgumentError.new("Please input a 16 digit card number")
    end
    @card_num = card_num    
  end
  
  def check_card
    card_array = @card_num.to_s.split("").map(&:to_i)
    idx = 0   
    p card_array
      
    while idx < card_array.length
      card_array[idx] *= 2      
      idx += 2
    end
    
    p card_array
    
    sum = 0
    card_array.each do |digit|
      if digit > 9
        digit.to_s.split("").each do |num|          
          sum += num.to_i          
        end
      else
        sum += digit        
      end      
    end
    
    if sum % 10 == 0
      return true
    else
      return false
    end
    
  end
end


# test = CreditCard.new(4408041234567901)
# test.check_card


# Refactored Solution








# Reflection
