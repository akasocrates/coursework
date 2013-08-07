arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each do |a|
	p a	
end

puts

arr.each { |a| p a}

puts

arr.each do |a|
	if a > 5
		p a
		
	end
end

puts

odd_arr = arr.select { |e| e.odd? }
p odd_arr

puts

arr.push(11)
arr.unshift(0)
p arr

arr.pop
arr.push(3)
p arr

arr.uniq
p arr.uniq

h = {:a => 1, :b => 2}
puts h

sh = {a:1, b:2, c:3}
puts sh

h = {a:1, b:2, c:3, d:4}
puts h[:b]

h[:e] = 5
puts h

puts

h.each do |k, v|
	if v < 3.5
	h.delete(k)
	end
end
puts h


puts


arr = [1, 2, {a:3, b:4}]
puts arr

h = {a:1, b:2, c:[1, 2, 3]}
puts h
