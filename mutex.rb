require 'aspectr'
require 'thread'

#mutex.rb

class Synchronized < AspectR::Aspect

def lock(method_sym, object, return_value, *args)

object.mutex.lock

end

end

 def unlock(method_sym, object, return_value, *args)

 object.mutex.unlock

end
end


