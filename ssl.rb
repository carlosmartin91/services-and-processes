require 'rubygems'
require 'net/ssh'

def run_remotely(command, host, args)
NET::SSH.start(host, args) do |session|
session.process.popen3(command) do |stdin,stdout,stderr|
yield stdin,stdout,stderr
end
end
end
