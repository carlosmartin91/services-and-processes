require 'enumerator'

#enumerator.rb

module Enumerable

def all_simultaneously

if block_given?

collect { |e| Thread.new { yield(e) } }.each { |t| t.join }

self

else

 enum_for :all_simultaneously

 end

 end

end
