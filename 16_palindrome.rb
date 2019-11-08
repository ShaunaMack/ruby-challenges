# Palindrome

# A palindrome is a string that is exactly the same forwards
# as it is backwards, like "mom" or "racecar".

# Add tests to the 16_palindrome_test.rb file, inside the test folder.
# The test will check your method takes a word as a string and return 
# a boolean indicating whether or not the word is a palindrome.

# If your having trouble writing tests, look over previous morning challenges.

# Once you have done this, try to write the method below and check
# your code by running your tests.

# Example:
# palindrome("hello") should return false
# palindrome("racecar") should return true

# Check your solution by running the tests:
# ruby tests/16_palindrome_test.rb

def palindrome (string)
  i = 0
  pal = true
  until pal == false || i == string.length/2
    # index starts at 0 so need to take 1 from length
    if string[i] == string[string.length - 1 - i]
      i += 1
    else
      pal = false
      break # used break to make it clear that no further check required if false
    end
  end
  # puts the boolean variable rather than 2 strings during loop
  puts pal
end

palindrome("hello")
palindrome("racecar")


# attemting to make code nicer
# def v2_palindrome(string)
#   pal = true
#   for (i = 0; i++; i < string.length/2) 
#     if string[i] != string[string.length - 1 -i]
#       pal = false
#       break
#     end
#   end
#   puts pal
# end

# v2_palindrome("anna")
# v2_palindrome("meow")

# after finding the method .reverse =)
def v3_palindrome(string)
  backward = string.reverse
  if backward == string
    puts "True"
  else
    puts "False"
  end
end

v3_palindrome("anna")
v3_palindrome("meow")
