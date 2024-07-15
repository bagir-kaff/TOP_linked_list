require_relative 'lib/node'
require_relative 'lib/linked_list'


list = LinkedList.new

list.append(Node.new(-1))
list.append(Node.new(-2))
list.append(Node.new(9))
list.append(Node.new(-6))
list.append(Node.new(-7))
list.prepend(Node.new(99))
list.append(Node.new(-3))

p "head = #{list.head.value}"
p "tail = #{list.tail.value}"

p "Size = #{list.size}"

index = 5
p "list.at(#{index}) = #{list.at(index).value}"

p "list.pop = #{list.pop.value}"
p "tail = #{list.tail.value}"
p "list.pop = #{list.pop.value}"
p "tail = #{list.tail.value}"

p "contains?(100) = #{list.contains?(100)}"
p "contains?(99) = #{list.contains?(99)}"

p"find(9) = #{list.find(9)}"
p"find(-9) = #{'nil' if list.find(-9) == nil}"

p "list.to_s = #{list.to_s}"
p "Size = #{list.size}"

list.insert_at(Node.new(12),10)

p "list.to_s = #{list.to_s}"
p "Size = #{list.size}"

list.remove_at(0)
p "list.remove_at(0)"
p "list.to_s = #{list.to_s}"
list.remove_at(3)
p "list.remove_at(3)"
p "list.to_s = #{list.to_s}"

p "Size = #{list.size}"
