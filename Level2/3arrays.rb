def avg(nums)
	nums.sum / nums.length
end

nums = [100, 20, 50, 12, 21]
puts "Average of #{nums} is #{avg(nums)}"


# Using join method
"
TODO 1: Given a nested array of first
names and last names, return a new array with 
the full names.
"
puts "\n\nProblem 1\n\n"
names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]

full_names=[]
for name in names
  full_names.push(name.join(" "))
end
puts full_names

names.each do |name|
  puts name.join(" ")
end

"
TODO 2. Given two arrays books and authors, 
merge them and print who wrote which book.
"
puts "\n\nProblem 2 \n\n"
books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

books.each_with_index do |book, index|
  puts "#{book} was written by #{authors[index]}"
end

"
TODO 3. Print the given list of todos by category.
(You haven't learned Hashes yet, so use only arrays.)
"
puts "\n\nProblem 3 \n\n"


todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"]
]

# Fill in code that will print:
#   money:
#     Send invoice
#     Pay rent
#     Pay taxes
#   organize:
#     Clean room
#     Arrange books
#   food:
#     Buy groceries

categories = ["money", "organize", "food"]

categories.each do |category|
  puts category
  todos.each do |todo|
    if todo[1] == category
      puts "\t #{todo[0]}"
    end
  end
end
