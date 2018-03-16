require './lib/linked_list'
require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_if_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_if_head_is_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_append_method
    list = LinkedList.new
    list.append("West")
    # binding.pry
    assert_equal "West", list.head.surname
  end

  def test_next_node_for_linkedlist
    list = LinkedList.new
    list.append("West")
    assert_nil list.head.next_node
  end

  def test_count_method
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count

  end

  def test_for_to_string_method
    list = LinkedList.new
    list.append("West")
    result = "The West family"
    assert_equal result, list.to_string
  end

  def test_append_method
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    list.append("Panta")

    # binding.pry
    assert_equal "Rhodes", list.head.surname
    assert_equal 3, list.count
    result = "The Rhodes family, followed by the Hardy family, followed by the Panta family"
    assert_equal result, list.to_string
  end

  def test_if_prepend_works
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    result = "The McKinney family, followed by the Brooks family, followed by the Henderson family"

    assert_equal result, list.to_string
  end

  def test_if_insert_method_works
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Lawson")
    result = "The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Henderson family"
    assert_equal result, list.to_string
  end

  def test_if_find_method_works
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    list.insert(1, "Lawson")
    assert_equal "The Brooks family", list.find(3, 1)
  end








end
