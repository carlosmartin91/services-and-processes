require 'thread'

#counterthread.rb

class CounterThread < Thread

def initialize

@count = 0 

@continue = true

 super do

 @count += 1 while @continue

 puts "I counted up to #{@count} before I was cruelly stopped."

 end

 end

 def stop

 @continue = false

counter = CounterThread.new

sleep 2

counter.stop


t = Thread.new { loop { puts 'I am the unstoppable'


# I am the unstoppable thread!

# I am the unstoppable thread!

# I am the unstoppable thread!

# I am the unstoppable thread!

t.terminate
