require_relative "../lib/cpuusage"
require "minitest/autorun"

class TestCpuUsage < Minitest::Unit::TestCase
 
  def test_cpu
    assert_operator $cpuusagepercentage.to_i,:>,0
  end
 
end
