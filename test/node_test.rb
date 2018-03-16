require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'


class NodeTest < Minitest::Test

  def test_if_it_exists
    node = Node.new("Burke")
    assert_instance_of Node, node
  end

  def test_if_surname_works
    node = Node.new("Burke")
    assert_equal "Burke", node.surname
  end

  def test_for_next_node
    node = Node.new("Burke")
    assert_equal nil, node.next_node
    # binding.pry
  end










end
