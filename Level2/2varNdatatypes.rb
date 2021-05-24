count = 100
course = 'SaaS 201'
is_live = true
lessons = ['Basics', 'Intermediate', 'Advanced']

# Integers and the to_s method
age = 20
name = "Naman Jain"
puts "I am " + name + " and I am " + age.to_s + " years old."

# if to_s not used
answer = 42
puts "answer to life is " + answer
# o/p
# "TypeError (no implicit conversion of Integer into String)"


# String Interpolation of Integers
answer = 42
"answer to life is #{answer}"

# The to_f method
nums = [1, 2, 3, 4, 5, 6, 7]
puts "Ths average of these numbers 
        are #{(nums.sum.to_f / nums.length)}"

# String
str = "all is well"
str.length # Length of the string
# => 11

str.upcase # Convert all characters to capital case
# => "ALL IS WELL"

str.downcase # Convert all characters to small case
# => "all is well"

str.capitalize # Capitalizes the first letter of the string
# => "All is well"
