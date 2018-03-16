require './lib/wagantrain'
require 'minitest/autorun'
require 'minitest/pride'

class WagonTrainTest < MiniTest::Test

  def test_if_it_exists
    wagontrain = Wagontrain.new
    assert_instance_of Wagontrain, wagontrain
  end










end
