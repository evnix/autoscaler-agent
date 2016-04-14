#function to print the bandwidth used
  class Networkusage
    def bandrx

        if File.exists?("/proc/net/dev")
           File.open("/proc/net/dev", "r") do |file|
           $result = file.read
        end
        end

    $arrRows = $result.split("\n")

    $arrEthLoRows = $arrRows.grep(/eth|lo/)

    rowcount = ($arrEthLoRows.count - 1)

    for i in (0..rowcount)
      $arrEthLoRows[i] = $arrEthLoRows[i].gsub(/\s+/m, ' ').strip.split(" ")
    end

    $arrColumns = Array.new
    for l in (0..rowcount)
      $temp = Array.new
      $temp[0] = $arrEthLoRows[l][1]
      $arrColumns << $temp
    end

    columncount = ($arrColumns[0].count - 1)

    $arrTotal = Array.new
    for p in (0..columncount)
      $arrTotal[p] = 0
    end

    for j in (0..columncount)
      for k in (0..rowcount)
        $arrTotal[j] = $arrColumns[k][j].to_i + $arrTotal[j]
      end
    end

    $bandrxtx = $arrTotal
    puts $bandrxtx
    
  end
  end

  ob= Networkusage.new
  ob.bandrx
