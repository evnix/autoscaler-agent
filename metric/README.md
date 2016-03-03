# metric

## DESCRIPTION:

A Ruby Class with methods to find usage statistics on a Linux server such as CPU, Disk,Load, 
Bandwidth, Disk I/O, and Memory

* If you are using a Operating System that is not Linux, please use the Gem metric_ext by nishanth

## Getting Started

gem install metric

```ruby
require 'metric'

mtr = metric

mtr.mt_diskused
mtr.mt_diskused_perc
mtr.mt_cpuused
mtr.mt_tcpused
mtr.mt_udpused
mtr.mt_memused
mtr.mt_load
mtr.mt_bandrx
mtr.mt_bandtx
mtr.mt_diskioreads
mtr.mt_diskiowrites
mtr.mt_cputop
mtr.mt_memtop
```

## Example

```bash
Run:

ruby example.rb

Example Output:

11.56 Gigabytes Disk Used
7.0% Disk Used
0.25% CPU Used
43% Active Memory Used
0.01 Average System Load Of The Past Minute
0.008 Mbit/s Current Bandwidth Received
0.2 Mbit/s Current Bandwidth Transmitted
0/s Current Disk Reads Completed
2/s Current Disk Writes Completed
Top Ten Processes By CPU Consumption:
[["/usr/lib64/erlang/erts-5.8.5/bin/beam.smp", "5.2"], ["ruby", "4.1"], ["ps", "2.0"], ["abrt-dump-oops", "0.8"], ["aoe_ktio", "0.7"], ["aoe_tx", "0.4"], ["ata_sff", "0.2"], ["auditd", "0.1"], ["awk", "0.1"], ["-bash", "0.1"]]
Top Ten Processes By Memory Consumption:
[["unicorn", "4.8"], ["unicorn", "4.7"], ["unicorn", "4.6"], ["unicorn", "4.6"], ["unicorn", "4.5"], ["unicorn", "4.5"], ["unicorn", "4.3"], ["unicorn", "4.3"], ["unicorn", "4.2"], ["/usr/lib64/erlang/erts-5.8.5/bin/beam.smp", "4.0"]]
```


## Methods available

    mt_diskused
    mt_diskused_perc
    mt_cpuused
    mt_tcpused
    mt_udpused
    mt_memused
    mt_load
    mt_bandrx
    mt_bandtx
    mt_diskioreads
    mt_diskiowrites
    mt_cputop
    mt_memtop

## Notes

Disk Used is a sum of all partitions calculated in Gigabytes

Disk Used Percentage is a total percentage of all disk partitions used

CPU Used is a percentage of current CPU being used

Active Memory Used is a percentage of active system memory being used

Load is the average load of the past minute

Bandwidth is current received and transmitted in Megabits

Disk IO is current disk reads and writes completed per second

Top Ten Processes By CPU Consumption are based on percent CPU used

Top Ten Processes By Memory Consumption are base on percent Memory used

## Tested Using

RUBY VERSIONS:
ruby 1.9.3p429 (2013-05-15) [x86_64-linux]

OS VERSIONS:
CENTOS 5x 6x, Ubuntu 12.04, Fedora 18
