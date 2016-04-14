require_relative '../lib/memoryusage'
require "minitest/autorun"

class TestMemoryusage < Minitest::Unit::TestCase
  def test_memoryusage_true
 # ob=MemoryUsage.new
     
    assert_operator MemoryUsage.memoryused.to_i,:>,0, message="true"
  end
  
 
end
