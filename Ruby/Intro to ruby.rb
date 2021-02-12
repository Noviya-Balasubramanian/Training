#string_interpolation
puts "What is your next todo?"
next_todo = gets
puts "\n\n\n" #carriage return
puts "[ ] #{next_todo}" #string_interpolation- "#{any variable or expression}"

#to_s-- “to string” method
length=30
breadth=40
area=length*breadth
age =20
name='Sachin'
puts 'I am'+name.downcase+'and I am'+age.to_s+'old'
#or
puts 'I am'+" #{name.length}"+"and I am"+" #{age}"+'old'

#Boolean values
puts 'Fiction or non fiction?'
genre=gets.chomp.downcase
if genre=='fiction'
    puts "You have selected fiction"
elsif genre=="non-fiction"
    puts "You selected non-fiction"
else
    puts "ERROR: select" 
end

#**ARRAYS***
books=[]
books.push('hbcsd')
puts books
nums = [2, 4, 200, 400]nums.each {|x| puts "The current number is #{x}" }

#Transforming arrays
nums = [-2, 4, 200, 400]
nums.each {|x| puts "The current number is #{x}" }
new_nums=nums.map{|number| number*125}
new_nums.each{|n| puts n}

#Given a nested array of first names and last names, return a new array with the full names.
names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]] 
namesn=names.map{|s| s.join(' ')}
print( namesn)

#Given two arrays books and authors, merge them and print who wrote which book.
books = ["Design as Art", "Anathem", "Shogun"]  
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]
zeebooks=books.map.with_index {|book, i| "#{book} by #{authors[i]}"}
newbooks=books.map.with_index {|book, i| "#{book} is in index #{i}"}
print(zeebooks)

#***HASH***
library = {  "rowling" => "Harry Potter",  "lahiri" => "Interpreter of Maladies"}
puts library["lahiri"]    
library = {}
library["austen"] = ["Pride and Prejudice", "Sense and Sensibility"]
library["asimov"] = ["Robots of Dawn", "I, Robot"]
authors = library.keys
puts "These are the authors in my catalog: #{authors.join(', ')}"
library.each do |author, books| 
    puts "#{author.capitalize} wrote the books #{books.join(', ')}"
end

#symbols
a = :name
c = :"multiple words"  
c = [:x, :y]
#Symbols are most commonly used in Ruby as keys in Hashes:
library = {  :austen => ["a", "b"]}
library[:rowling] = ["x"]
print(library)
print(c)

#Given two arrays books and authors, merge them into a single Hash. 
#The keys of the Hash must be the lower-cased firstname of the authors, and must be symbols.
books = ["Design as Art", "Anathem", "Shogun"]  
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]
library={}
for index in 0..2
    library[books[index].to_sym]=authors[index]
end
print(library)

#Given this list of todos, create a Hash keyed by category, whose value is an array containing all the todos inthat category. 
#The keys of the Hash must be a symbol.
todos = [  ["Send invoice", "money"],  ["Clean room", "organize"],  ["Pay rent", "money"],  ["Arrange books", "organize"],  ["Pay taxes", "money"],  ["Buy groceries", "food"]]
h = Hash.new{ |h,v| h[v]=[] }
todos.each{ |k,v| h[v] << k }
puts h

#***FUNCTIONS***
def generate_salutation(emails)
    if emails.length == 1
        "Hello #{emails[0]}!"  
    elsif emails.length == 2    
        "Hello #{emails[0]} and #{emails[1]}!"  
    elsif emails.length > 2    
        "Hello #{emails[0..-2].join(', ')}, and #{emails.last}!"  
    end
end
recipients = [  ["Srinath"],  ["Jadeja", "Kambli"],  ["Sachin", "Sidhu", "Kumble"]]
recipients.each do |emails|  
    puts generate_salutation(emails)
end

# write code so the program prints:
#   Hello Mr. Mandela
#   Welcome Mr. Turing
def salute(s1,s2)
    s2.capitalize+" Mr."+"#{s1.split.last}!"
end
puts salute("Nelson Rolihlahla Mandela", "hello")
puts salute("Sir Alan Turing", "welcome")

#DNS server
