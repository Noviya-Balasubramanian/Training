def get_command_line_argument  
    if ARGV.empty?    
        puts "Usage: ruby lookup.rb <domain>"    
        exit
    end  
    ARGV.first
end

domain = get_command_line_argument
dns_records = []
File.open("zone").read.split("\n").each_with_index do |item, index|
    if item.include?(",")
        dns_records=dns_records.push(item.split(","))
    end
end

def resolve(dns_records, domain)
    temp=dns_records.select do |x|
        x[1]==domain
    end
    temp=temp[0]
    if temp[0]=="A"
        return temp[2]
    elsif temp[0]=="CNAME"
        resolve(dns_records, temp[2])
    end 
end

lookup_chain = resolve(dns_records,  domain)
puts "#{domain} => #{lookup_chain}"