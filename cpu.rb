class Top
def meth
output=`top`
puts "#{output}"
end
end
ob=Top.new
ob.meth
