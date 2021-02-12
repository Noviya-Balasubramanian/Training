nums = [-2, 4, 200, 400]
nums.each {|x| puts "The current number is #{x}" }
new_nums=nums.map{|number| number*125}
new_nums.each{|n| puts n}
#1
names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]] 
namesn=names.map{|s| s.join(' ')}
print( namesn)
#2
books = ["Design as Art", "Anathem", "Shogun"]  
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]
zeebooks=books.map.with_index {|book, i| "#{book} by #{authors[i]}"}
newbooks=books.map.with_index {|book, i| "#{book} is in index #{i}"}
print(zeebooks)
#3
#todos = [  ["Send invoice", "money"],  ["Clean room", "organize"],  ["Pay rent", "money"],  ["Arrange books", "organize"],  ["Pay taxes", "money"],  ["Buy groceries", "food"]]
#print(todos.length)
#print(todos[0][0])
#for i,j in 0..5
    #if todos[i][j+1] in new_list
        