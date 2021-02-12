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

a = :name
c = :"multiple words"  
# Enclose multi-word symbols in double quotes# symbols are just like any other data and# we can put them inside arrays and hashes
c = [:x, :y]
#Symbols are most commonly used in Ruby as keys in Hashes:
library = {  :austen => ["a", "b"]}
library[:rowling] = ["x"]
print(library)
print(c)

#1
books = ["Design as Art", "Anathem", "Shogun"]  
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]
library={}
for index in 0..2
    library[books[index].to_sym]=authors[index]
end
print(library)

#2
todos = [  ["Send invoice", "money"],  ["Clean room", "organize"],  ["Pay rent", "money"],  ["Arrange books", "organize"],  ["Pay taxes", "money"],  ["Buy groceries", "food"]]
h = Hash.new{ |h,v| h[v]=[] }
todos.each{ |k,v| h[v] << k }
puts h 





