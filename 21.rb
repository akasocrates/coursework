deck = [
	['2 of hearts', 2], ['3 of hearts', 3], ['4 of hearts', 4], ['5 of hearts', 5], ['6 of hearts', 6], ['7 of hearts', 7], ['8 of hearts', 8], ['9 of hearts', 9],
	['10 of hearts', 10], ['jack of hearts', 10], ['queen of hearts', 10], ['king of hearts', 10], ['ace of hearts', 11], ['2 of diamonds', 2], ['3 of diamonds', 3],
	['4 of diamonds', 4], ['5 of diamonds', 5], ['6 of diamonds', 6], ['7 of diamonds', 7], ['8 of diamonds', 8], ['9 of diamonds', 9], ['10 of diamonds', 10],
	['jack of diamonds', 10], ['queen of diamonds', 10], ['king of diamonds', 10], ['ace of diamonds', 11], ['2 of clubs', 2], ['3 of clubs', 3], ['4 of clubs', 4],
	['5 of clubs', 5], ['6 of clubs', 6], ['7 of clubs', 7], ['8 of clubs', 8], ['9 of clubs', 9], ['10 of clubs', 10], ['jack of clubs', 10], ['queen of clubs', 10],
	['king of clubs', 10], ['ace of clubs', 11], ['2 of spades', 2], ['3 of spades', 3], ['4 of spades', 4], ['5 of spades', 5], ['6 of spades', 6], ['7 of spades', 7],
	['8 of spades', 8], ['9 of spades', 9], ['10 of spades', 10], ['jack of spades', 10], ['queen of spades', 10], ['king of spades', 10], ['ace of spades', 11]
]



def calculate_total(cards) # input is an array of arrays
	arr = cards.map { |e| e[1]  } # gets second element of the array and loads that into a new array

	total = 0
	arr.each do |value|
		total = total + value
	end

	arr.select { |e| e == 11}.count.times do # corrects for aces
		if total > 21
			total = total - 10
		end
	end

return total
end


deck.shuffle!


# Deal first two cards
mycards = []
dealercards = []
puts ''

mycards.push(deck.pop) # [['2 of spades, 2], [4 of hearts, 4],...]
dealercards.push(deck.pop)
mycards.push(deck.pop)
dealercards.push(deck.pop)

mytotal = calculate_total(mycards)
dealertotal = calculate_total(dealercards)

puts 'My cards: ' + mycards.to_s + '. Total is ' + mytotal.to_s
puts 'Dealer cards: ' + dealercards.to_s + '. Total is ' + calculate_total(dealercards).to_s

if mytotal == 21
  puts 'Congratulations, you hit blackjack! You win!'
  exit
end

if mytotal > 21
  puts 'You bust. Sorry, you lose.'
end

if dealertotal > 21
  puts 'Dealer busts! You win!'
end


puts''

# player plays

while mytotal < 21
  puts 'What do you want to do? 1) for Hit 2) for Stay'
  reply = gets.chomp

  if !['1', '2'].include?(reply)
    puts 'Error: you must enter 1 or 2.'
    next
  end

  if reply == '2'
    puts 'You have chosen to stay. Now it\'s the dealer\'s turn.'
    break
  end

  if reply == '1'
    newcard = deck.pop
    mycards.push(newcard)
    mytotal = calculate_total(mycards)
    puts ''
    puts 'You\'re new card is: ' + newcard.to_s + '. You\'re current total is: ' + mytotal.to_s
  end

end

puts ''

if mytotal == 21
  puts 'You\'re total is 21! Congratulations. You win!'
  exit
elsif mytotal > 21
  puts 'You bust. Sorry, you lose.'
  exit
end


# dealer plays

while (dealertotal < 17 || dealertotal < mytotal)
  newcard = deck.pop
  dealercards.push(newcard)
  puts 'Dealer\'s new card is: ' + newcard.to_s
  dealertotal = calculate_total(dealercards)
  if dealertotal > 21
    puts 'Dealer total is: ' + dealertotal.to_s + ' Dealer busts! You win!'
    exit
  end

  if (dealertotal >= mytotal || dealertotal == 21)
    puts 'Dealer\'s total is: ' + dealertotal.to_s + ' Dealer wins!'
    exit
  end

  puts 'Dealer\'s total is: ' + dealertotal.to_s


end

# Compare (this is where tie comes in.)


