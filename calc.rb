#enter number and operation

puts "Please enter the first number."
num1 = gets.chomp
puts "Please enter the second number."
num2 = gets.chomp
puts "Enter 1) for ADDITION"
puts "Enter 2) for SUBTRACTION"
puts "Enter 3) for MULTIPLICATION"
puts "Enter 4) for DIVISION"

#calculate result
operation = gets.chomp

if operation == "1"
  result = num1.to_i + num2.to_i
end

if operation == "2"
  result = num1.to_i - num2.to_i
end

if operation == "3"
  result = num1.to_i * num2.to_i
end

if operation == "4"
  result = num1.to_f / num2.to_f
end

puts "Result: #{result}"