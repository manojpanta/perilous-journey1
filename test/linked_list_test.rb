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
    list.append("Panta")
    list.prepend("McKinney")
    list.insert(1, "Lawson")
    assert_equal "The Brooks family", list.find(2, 1)
  end

  def test_if_includes_works
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.append("Panta")
    list.prepend("McKinney")
    assert_equal true, list.include?("McKinney")
    assert_equal false, list.include?("Nepa")
  end

  def test_if_pop_works
    list = LinkedList.new
    list.append("Lawson")
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")
    result1 = "The Henderson family has died of dysentery"
    assert_equal result1, list.pop
    result2 = "The Brooks family has died of dysentery"
    assert_equal result2, list.pop
    result3 = "The Lawson family has died of dysentery"
    assert_equal result3, list.pop
    result1 = "The McKinney family"
    assert_equal result1, list.to_string
  end

end
