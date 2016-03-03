require 'metric'
mtr =  metric

puts "#{mtr.mt_diskused} Gigabytes Used"
puts "#{mtr.mt_diskused_perc} Perventage of Gigabytes Used"
puts "#{mtr.mt_cpuused}% CPU Used"
puts "#{mtr.mt_memused}% Active Memory Used"
puts "#{mtr.mt_load} Average System Load Of The Past Minute"
puts "#{mtr.mt_bandrx} Mbit/s Current Bandwidth Received"
puts "#{mtr.mt_bandtx} Mbit/s Current Bandwidth Transmitted"
puts "#{mtr.mt_diskioreads}/s Current Disk Reads Completed"
puts "#{mtr.mt_diskiowrites}/s Current Disk Writes Completed"
puts "Top Ten Processes By CPU Consumption: #{mtr.umt_cputop}"
puts "Top Ten Processes By Memory Consumption: #{mtr.mt_memtop}"

