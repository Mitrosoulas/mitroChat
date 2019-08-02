require 'socket'
require 'net/http'
require 'openssl'

# key = OpenSSL::PKey::RSA.new 2048
# cipher = OpenSSL::Cipher.new 'AES-128-CBC'
# open 'private_key.pem', 'w' do |io| io.write key.to_pem end
# open 'public_key.pem', 'w' do |io| io.write key.public_key.to_pem end



puts '______                       ___  ___          _ '           
puts '| ___ \                      |  \/  |         | |  '      
puts '| |_/ /___   ___  _ __ ___   | .  . | __ _ ___| |_ ___ _ __ '   
puts '|    // _ \ / _ \|  _ ` _ \  | |\/| |/ _` / __| __/ _ \  __|'
puts '| |\ \ (_) | (_) | | | | | | | |  | | (_| \__ \ ||  __/ |   '
puts '\_| \_\___/ \___/|_| |_| |_| \_|  |_/\__,_|___/\__\___|_|   '


puts "MITROCHAT V1.0"
ip =  Net::HTTP.get(URI("https://api.ipify.org"))
server = TCPServer.open("0.0.0.0",4444)
puts "\n\nYour chat server is online"
puts "\tYour public IP address is: "+ ip
puts "\nENTER YOUR NAME: "
name = gets.strip
puts "Waiting for a friend to connect..."
friend = server.accept
friend.puts(name)
fName = friend.gets.strip
puts fName+' joined your room'

responseHandler = Thread.new {
	loop {
	puts "\t\t\t" + fName +' : '+friend.gets }
}






loop {
	msg = gets
	friend.puts msg
	
	


}