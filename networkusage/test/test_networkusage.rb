require_relative "../lib/networkusage"
require "minitest/autorun"

class TestNetworkusage < Minitest::Unit::TestCase
 
  def test_network
    assert_operator $bandrxtx.to_i,:>,0
  end
 
end
