# Write your code here.

def line(customers)
    if customers.empty?
       puts "The line is currently empty."
    else
        customer_array = []
        customers.each_with_index do |customer, index|
           customer_array << "#{index + 1}. #{customer}"
        end
        puts "The line is currently: #{customer_array.join(" ")}"
    end
end

def take_a_number(customers, new_customer)
    customers << new_customer
    puts "Welcome, #{new_customer}. You are number #{customers.length} in line."
end

def now_serving(customers)
    if customers.empty?
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{customers.first}."
        customers.shift
    end
end