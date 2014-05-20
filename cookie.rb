directory = File.expand_path(File.dirname(__FILE__))

fortunes = File.open("#{directory}/fortunes.txt").read
@fortune_array = []

fortunes.each_line do |line|
  @fortune_array.push(line)
end

def cookie
	puts "Would you like to open your fortune cookie? [Yes/No] "
	input = gets.chomp
	input.downcase!
	puts "Your fortune says: #{@fortune_array[rand(@fortune_array.length - 1)]}" if input == "yes"
	# puts "Your fortune says: '#{@fortunes[rand(42)]}'" if input == "yes"
end

cookie