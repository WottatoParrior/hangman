require 'csv'

puts "Game has begun, you have 4 lifes to guess the word"
puts "Every failed letter gives you minus one life"
contents= File.open 'words.csv'

def word_finder(contents)
	word_strings=[]
	contents.each_with_index do |row,index|
	word_strings[index]=row
	
	end
	until false
	new_word=word_strings[rand(0..word_strings.length)]
		if new_word.length > 5 && new_word.length <12
			return new_word
			break
		end
	end
end

	
lives=10
empty_word=[]
game_word=word_finder(contents)
game_word=game_word.to_s.downcase

(game_word.length-1).times do |i|
	empty_word[i]="_ "
end
print empty_word.join
puts "You have #{lives} lives"
while lives>0  do
puts "Choose a letter"
letter= gets.chomp
if game_word.include?(letter) 
	game_word.length.times do |k|
		if game_word[k]==letter
			puts "Bravo"

			empty_word[k]=letter
		end
	end
else
	puts "Whoops you lost a life"
	lives = lives - 1
end

puts empty_word.join
puts "you have #{lives} lives left"

end
puts game_word
	


