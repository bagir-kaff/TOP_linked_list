require_relative 'lib/node'
require_relative 'lib/linked_list_no_tail'


list = LinkedListNoTail.new

list.append(Node.new(-1))
list.append(Node.new(-2))
list.append(Node.new(9))
list.append(Node.new(-6))
list.append(Node.new(-7))
list.prepend(Node.new(99))
list.append(Node.new(-3))

p "head = #{list.head.value}"

p "Size = #{list.size}"

puts
p "list.at(n)"
p "0 = #{list.at(0).value}"
p "1 = #{list.at(1).value}"
p "2 = #{list.at(2).value}"
p "3 = #{list.at(3).value}"
p "4 = #{list.at(4).value}"
p "5 = #{list.at(5).value}"
p "6 = #{list.at(6).value}"
p "7 = #{list.at(7).value}"
p "-1 = #{list.at(-1).value}"
p "-2 = #{list.at(-2).value}"
p "-99 = #{list.at(-99).value}"
puts
p "list.pop = #{list.pop.value}"
p "list.to_s = #{list.to_s}"
p "list.pop = #{list.pop.value}"
p "list.to_s = #{list.to_s}"
p "Size = #{list.size}"
puts
p "contains?(100) = #{list.contains?(100)}"
p "contains?(99) = #{list.contains?(99)}"
puts
p"find(9) = #{list.find(9)}"
p"find(-9) = #{'nil' if list.find(-9) == nil}"
puts

p "list.to_s = #{list.to_s}"
p "Size = #{list.size}"
list.insert_at(Node.new(12),10)
p "insert_at(12,10)"
p "list.to_s = #{list.to_s}"
p "Size = #{list.size}"
list.insert_at(Node.new(12),0)
p "insert_at(12,0)"
p "list.to_s = #{list.to_s}"
p "Size = #{list.size}"

puts

p "list.to_s = #{list.to_s}"
puts
list.remove_at(99)
p "list.remove_at(99)"
p "list.to_s = #{list.to_s}"
puts
list.remove_at(-99)
p "list.remove_at(-99)"
p "list.to_s = #{list.to_s}"
puts
puts
list.remove_at(0)
p "list.remove_at(0)"
p "list.to_s = #{list.to_s}"

p "Size = #{list.size}"

list.remove_at(-1)
p "list.remove_at(-1)"
p "list.to_s = #{list.to_s}"

list.remove_at(0)
p "list.remove_at(0)"
p "list.to_s = #{list.to_s}"

list.remove_at(0)
p "list.remove_at(0)"
p "list.to_s = #{list.to_s}"

list.remove_at(0)
p "list.remove_at(0)"
p "list.to_s = #{list.to_s}"

list.remove_at(0)
p "list.remove_at(0)"
p "list.to_s = #{list.to_s}"

list.remove_at(0)
p "list.remove_at(0)"
p "list.to_s = #{list.to_s}"
