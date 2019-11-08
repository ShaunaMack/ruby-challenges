# # Count Letters

# # Write a method that will take a string, keep count
# # of each letter and return the totals as a hash.

# # Example:
# # count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, "o"=>1}
# # count_letters("mississippi") should return {"m"=>1, "i"=>4, "s"=>4, "p"=>2}

# # Check your solution by running the tests:
# # ruby tests/08_count_letters_test.rb

# #Array answer
# def count_letters(words)

# words = words.split("")

# frequencies = Hash.new(0)
# words.each {|letter| frequencies[letter] += 1}

# frequencies = frequencies.sort_by {|letter, count| count}
# frequencies.reverse!

# print frequencies

# end
# count_letters("mississippi")

# #Hash version
# require 'colorize'

# puts "This is blue".colorize(:blue)

# def count_letters(string)
#     result = Hash.new(0)
#     puts result
#     string.each_char {|letter| 
#         next unless letter =~/\w/
#         result[letter] += 1
#     }
#     puts result
# end

#count_letters("mississippi")

def count_letters(string)
    result = {}
    string.each_char do |letter|
        if result[letter]
            result[letter] += 1
        else
            result[letter] = 1
        end
    end  
    
    result.sort_by {|letter, count| count}
    p result
  end
  
  count_letters("mississippi")


