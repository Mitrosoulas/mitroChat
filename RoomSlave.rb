require 'socket'
require 'openssl'

puts '______                        _____ _                 '
puts '| ___ \                      /  ___| |                '
puts '| |_/ /___   ___  _ __ ___   \ `--.| | __ ___   _____ '
puts '|    // _ \ / _ \|  _   _ \   `--. \ |/ _  \ \ / / _ \ '
puts '| |\ \ (_) | (_) | | | | | | /\__/ / | (_| |\ V /  __/'
puts '\_| \_\___/ \___/|_| |_| |_| \____/|_|\__,_| \_/ \___|'

puts 'MITROCHAT V1.0'
puts "\nENTER YOUR NAME: "
name = gets.strip
puts "ENTER YOUR FRIENDS CHAT SERVER IP ADDRESS:"
ip = gets.strip
friend = TCPSocket.open(ip,4444)
fName = friend.gets.strip
friend.puts(name)
puts 'Joined '+fName+'\'s Room'

responseHandler = Thread.new {
	loop {
		puts "\t\t\t" + fName +' : '+friend.gets }
}


loop {
	
	
	msg = gets
	friend.puts msg
}
