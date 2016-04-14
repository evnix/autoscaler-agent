require 'usagewatch'
require 'json'
require 'net/http'

usw = Usagewatch


strConfig = File.read("agent.config")
objConfig = JSON.parse(strConfig)
p objConfig


loop do 


	p "---"
	data={}
	data["cpu"] = usw.uw_cpuused()
	data["tcp"] = usw.uw_tcpused()
	data["udp"] = usw.uw_udpused()
	data["mem"] = usw.uw_memused()
	str=JSON.generate(data)

	uri = URI(objConfig['url'])
	res = Net::HTTP.post_form(uri, 'data' => str)
  	sleep(2)

  break if false
end 