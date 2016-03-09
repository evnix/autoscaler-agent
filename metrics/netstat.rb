class Network

def meth

output=`netstat`

puts "#{output}"

end

end

ob=Network.new

ob.meth
