deck = {
	h1:1, h2:2, h3:3, h4:4, h5:5, h6:6, h7:7, h8:8, h9:9, h10:10, hj:10, hq:10, hk:10, ha:11,
	c1:1, c2:2, c3:3, c4:4, c5:5, c6:6, c7:7, c8:8, c9:9, c10:10, cj:10, cq:10, ck:10, ca:11,
	s1:1, s2:2, s3:3, s4:4, s5:5, s6:6, s7:7, s8:8, s9:9, s10:10, sj:10, sq:10, sk:10, sa:11,
	d1:1, d2:2, d3:3, d4:4, d5:5, d6:6, d7:7, d8:8, d9:9, d10:10, dj:10, dq:10, dk:10, da:11
} 

arr_deck = deck.keys


#PLAYER
player_card1 = deck[arr_deck.sample]
player_card2 = deck[arr_deck.sample]
player_hand = player_card1 + player_card2
puts 'After the first two cards, Player\'s hand is ' + player_hand.to_s

puts 'hit or stay?'
if gets.chomp.upcase = 'HIT'
	player_card = deck[arr_deck.sample]
	player_hand = player_hand + player_card
end

if player_hand > 21
	puts 'Player loses!'	
end














#DEALER
dealer_hand = 0
while dealer_hand < 17
	dealer_card = deck[arr_deck.sample]
	dealer_hand = dealer_hand + dealer_card 
end



if dealer_hand < player_hand
	dealer_card = deck[arr_deck.sample]
	dealer_hand = dealer_hand + dealer_card 
	
end

puts
puts 'Dealer hand is ' + dealer_hand.to_s

if dealer_hand > 21
	puts 'Player wins!'
elsif dealer_hand < player_hand
	puts 'Player wins!'
else
	puts 'Dealer wins!'
end

