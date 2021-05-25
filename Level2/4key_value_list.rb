" 
TODO 
Problem 1. Given two arrays books and authors,
merge them into a single Hash. The keys of the 
Hash must be the lower-cased firstname of the 
authors, and must be symbols.
"

# to_sym : To convert a string into a symbol.

books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

library = {}
authors.each_with_index do |author, index|
  author = author.split(" ")[0]
  library["#{author.downcase}".to_sym] = books[index]
end

puts library


"
TODO
Problem 2. Given this list of todos, create a 
Hash keyed by category, whose value is an array 
containing all the todos in that category. The
keys of the Hash must be a symbol.
"

# has_key?()

todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"]
]

require 'pp' # pretty printer
my_todo = {}
todos.each do |todo|
  if my_todo.has_key?("#{todo[1]}".to_sym) == false
    my_todo["#{todo[1]}".to_sym] = []
  end
  my_todo["#{todo[1]}".to_sym].push("#{todo[0]}")
end

pp my_todo
