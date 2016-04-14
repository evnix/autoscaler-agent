require "json"
require 'net/http'
require 'net/https'

class MemoryUsage
    def self.memoryused
        output=`free`
        str = "#{output}"
      # puts str
        lines=str.split("\n")
        words=lines[1].split("    ")
       return words[3]
    
    end

end

    

