class LinkedList
  attr_accessor :head, :tail, :size

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    old_tail = @tail
    node = Node.new(value)
    node.next_node = nil
    old_tail.next_node = node
    @tail = node
    @size += 1
  end

  def prepend(value)
    node = Node.new(value)
    if @head.nil?
      node.next_node = nil
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
    @size += 1
  end

  def size
    puts @size
  end

  def head
    puts @head.value
  end

  def tail
    puts @tail.value
  end

  def at(index)
    i = 0
    current = @head
    until i == index do
      current = current.next_node
      i += 1
    end
    current
  end

  def pop
    new_tail = at(@size - 2)
    new_tail.next_node = nil
    @size -= 1
    @tail = new_tail
  end

  def contains?(value)
    current = @head
    return true if current.value == value
    until current.next_node.nil?
      return true if current.value == value
      current = current.next_node
    end
    false
  end

  def find(value)
    current = @head
    i = 0
    until current.next_node.nil?
      current = current.next_node
      return i if current.value == value

      i += 1
    end
    nil
  end

  def to_s
    nodes = ["#{@head.value}"]

    current = @head
    until current.next_node.nil?
      current = current.next_node
      nodes.push("#{current.value}")
    end
    nodes.join(" -> ")
  end


end

class Node 
  attr_accessor :value, :next_node
  def initialize(value)
    @value = value
    @next_node = nil
  end
end

