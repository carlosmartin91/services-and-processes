require 'enumerator'

#enumerator.rb

array = [7,8,9]

simultaneous_array = array.enum_for(:each_simultaneously)

simultaneous_array.each do |e|

	sleep(5) # simulate a long, high-latency operation

print "Completed operation for #{e}!\n"

end

# Completed operation for 7!

# Completed operation for 9!

# Completed operation for 8!

simultaneous_array.collect { |x| sleep 5; x * -1 } # => []

[SSHServer, HTTPServer, IRCServer].each_simultaneously do |server|

 server.serve_forever

end
