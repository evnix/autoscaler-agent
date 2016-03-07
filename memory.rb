class Df
def meth
output=`df`
puts "#{output}"
end
end
ob=Df.new
ob.meth
