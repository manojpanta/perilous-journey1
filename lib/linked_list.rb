class LinkedList

  attr_reader :head, :count, :node_length

  def initialize
    @head = nil
    @count = 0
    @node_length = 0
    @node_surname = []
  end

  def append(surname)
    @node_length += 1
    @count += 1
    current = @head
    if @head.nil?
      @head = Node.new(surname)
    else
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = Node.new(surname)
    end
  end

  def to_string(current = @head, length = @node_length)
    sentence = "The #{current.surname} family"
    if current.nil?
      nil
    elsif current.next_node.nil?
      sentence
    else
        length -= 1
        length.times do
        current = current.next_node
        sentence.concat(", followed by the #{current.surname} family")
        end
        sentence
    end
  end

  def prepend(surname)
    @node_length += 1
    if @head.nil?
      @head = Node.new(surname)
    else
      old_head = @head
      @head = Node.new(surname)
      @head.next_node = old_head
    end
  end

  def insert(index, surname)
    @node_length += 1
    current = @head
    count = 0
    if @head.nil?
      @head = Node.new(surname)
    else
      until index = count - 1
        current = current.next_node
        count += 1
      end
      new_node = Node.new(surname)
      new_node.next_node = current.next_node
      current.next_node = new_node
    end
  end

  def find(position, length1)
    count = 0
    current = @head
    until  count == position
      current = current.next_node
      count += 1
    end
    to_string(current, length1)
  end


  def include?(surname1, current = @head)
    begin
      if current.surname == surname1
        return true
      else
        current = current.next_node
        include?(surname1, current)
      end
    rescue NoMethodError
      return false
    end
  end

  def pop
    @node_length -= 1
     current = @head
     until current.next_node.next_node.nil?
       current = current.next_node
     end
     surname = current.next_node.surname
     current.next_node = nil
     return "The #{surname} family has died of dysentery"
  end

end
