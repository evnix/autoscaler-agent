class Cpuusage
def mt_cpuused
    @proc0 = File.readlines('/proc/stat').grep(/^cpu /).first.split(" ")
    sleep 1
    @proc1 = File.readlines('/proc/stat').grep(/^cpu /).first.split(" ")

    @proc0usagesum = @proc0[1].to_i + @proc0[2].to_i + @proc0[3].to_i
    @proc1usagesum = @proc1[1].to_i + @proc1[2].to_i + @proc1[3].to_i
    @procusage = @proc1usagesum - @proc0usagesum

    @proc0total = 0
    for i in (1..4) do
      @proc0total += @proc0[i].to_i
    end
    @proc1total = 0
    for i in (1..4) do
      @proc1total += @proc1[i].to_i
    end
    @proctotal = (@proc1total - @proc0total)

    @cpuusage = (@procusage.to_f / @proctotal.to_f)
    $cpuusagepercentage = (1000 * @cpuusage).to_f.round(2)

      end
      end
      ob=Cpuusage.new
  ob.mt_cpuused
      puts "#{ob.mt_cpuused}"

