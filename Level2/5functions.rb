def generate_salutations(emails)
  if emails.length == 1
    "Hello #{emails[0]}!"
  elsif emails.length == 2
    "Hello #{emails[0]} and #{emails[1]}"
  elsif emails.length > 2
    "Hello #{emails[0..-2].join(', ')}, and #{emails.last}!"
  end
end

recipients = [
  ["Srinath"],
  ["Jadeja", "Kambli"],
  ["Sachin", "Sidhu", "Kumble"]
]

recipients.each do |emails|
  puts generate_salutations(emails)
end


"
Also note that in Ruby, the function always 
returns the value of the last evaluated 
statement. We can also use the return 
keyword to explicitly return from a function, 
but most often an implicit return like this 
is enough. This means both the following code 
snippets are the same:
"
# Explicit return
def avg(nums)
  return nums.sum / nums.length.to_f
end

# Implicit return
def avg(nums)
  nums.sum / nums.length.to_f
end

"
TODO Problem 1. Fill-in the following code
"
# write code so the program prints:
#   Hello Mr. Mandela
#   Welcome Mr. Turing

def salute(name, salutation)
  "#{salutation.capitalize} Mr. #{name.split(" ").last}"
end

puts salute("Nelson Rolihlahla Mandela", "hello")
puts salute("Sir Alan Turing", "welcome")
