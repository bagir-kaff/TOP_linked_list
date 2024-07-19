class LinkedListNoTail
  attr_accessor :head
  def initialize
    @head = nil
    @size = 0
  end

  def append(value)
    if head==nil
      self.head = value
    else
      current = head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = value
    end
    @size += 1
  end

  def prepend(value)
    value.next_node = head
    self.head = value
    @size += 1
  end

  def size
    @size
  end

  def at(index) #return node,
    if index<0
      return Node.new if -index > @size
      return at(@size + index)
    end
    return Node.new if index >= size
    current = head
    (0...index).step {|i| current = current.next_node }
    current
  end

  def pop
    current = head
    while current.next_node.next_node != nil
      current = current.next_node
    end
    popped_node = current.next_node
    current.next_node = nil
    @size-=1
    popped_node
  end

  def contains?(value)
    current = head
    while current != nil
      return true if current.value == value
      current = current.next_node
    end
    false
  end

  def find(value)
    current = head
    count = 0
    while current != nil
      return count if current.value == value
      count += 1
      current = current.next_node
    end
  end

  def find_node(value)
    current = head
    while current != nil
      return current if current.value == value
      current = current.next_node
    end
  end

  def to_s
    str = ""
    current = self.head
    while current != nil
      str << "#{current.value} -> "
      current = current.next_node
    end
    return str<<'nil'
  end

  def insert_at(value,index)
  end

  def remove_at(index) #return removed node
  end

end
