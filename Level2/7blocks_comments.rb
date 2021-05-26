# A "block" is a piece of code that we pass 
# to methods like each, map and so on.

=begin
So this is how multiline comment looks like.

"{} Preferred for sigle liners."
[1, 2, 3].each {|x| puts x}

"do Preferred for multiple lines."
[1, 2, 3].each do |x|
  puts x
end

=end

numbers = [1, 2, 3].map do |i|
  x = i + 2
  x = x * 2
  x
end


puts numbers

# __END__ denotes end of regular source code in Ruby
# nothing below it will be executed.
"
__END__
6
8
10
"

def run_once
  yield
end

run_once {puts "This block was run!"}

def run_thrice_with_index
  yield 0
  yield 1
  yield 2
end

run_thrice_with_index {|i| puts "#{i} Bravo!"}


def wrap_div
  "<div>#{yield}</div>"
end

puts wrap_div {"hello"}

"
Explicit blocks:

https://dev.to/baweaver/understanding-ruby-blocks-procs-and-lambdas-24o0
"