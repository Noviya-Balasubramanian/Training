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

#1
def salute(s1,s2)
    s2.capitalize+" Mr."+"#{s1.split.last}!"
end
puts salute("Nelson Rolihlahla Mandela", "hello")
puts salute("Sir Alan Turing", "welcome")