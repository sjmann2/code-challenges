# A palindrome is any number, word, or phrase that reads the same forward as it does backward. 
# In this challenge, we are going to focus on palindromic numbers. For example, 12321 is a palindromic number, whereas 123 is not.

# Write a method/function that starts at 0 and finds the first twenty-five numbers where the number 
# plus its inverse equals a palindrome that is greater than 1,000.

# 47(number) + 74(inverse) = 121(palindrome) Note: This does not meet the greater than 1,000 rule.

# Collect the twenty-five numbers in an array as the return value. Be sure to collect the number and not the sum.

# Bonus: Once you’ve found a working solution, see if you can create a solution without converting the numbers to strings/arrays.

# rules:
# n + n.reverse > 1000
# first 25 numbers starting from 0
# return the 25 numbers as an array

# until loop with an empty array defined
# if number to string + number to string reversed is greater than 1000 add to array
# break out of loop once the array equals 25

class PalindromicSum
  def initialize

  end

  def find_first_25
    palindromes = []

    num = 0
    
    until palindromes.count == 25 do
      inverse = num.to_s.reverse.to_i
      sum = num + inverse
      if sum > 1000 && (sum.to_s.reverse.to_i == sum)
        palindromes << num
      end
      num += 1
    end
    return palindromes
  end
end

p PalindromicSum.new.find_first_25