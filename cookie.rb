directory = File.expand_path(File.dirname(__FILE__))

fortunes = File.open("#{directory}/fortunes.txt").read
@fortune_array = []

fortunes.each_line { |line| @fortune_array.push(line) }

def cookie

	puts "Would you like to open your fortune cookie? [Yes/No] "
	input = gets.chomp
	input.downcase!

	case input
	when "yes" then puts "Your fortune says: #{@fortune_array[rand(@fortune_array.length - 1)]}"
	when "no" then puts "Too bad, here's your damn fortune: You're ungrateful."
	else puts "Not sure what you mean. Had you said 'Yes', your fortune would be: #{@fortune_array[rand(@fortune_array.length - 1)]}"
	end

end

cookie