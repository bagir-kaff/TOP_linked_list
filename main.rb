require_relative 'lib/linked_list'
require_relative 'lib/node'

class NilClass
  def value
    puts "\nTHERE IS NO #VALUE FOR NIL\n "
  end
  def next_node
    puts "\nTHERE IS NO #NEXT_NODE FOR NIL\n "
  end
end

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
list.prepend('racoon')
puts list
puts list.size

p "INSERT_AT('BEAR', -1): "
puts "before  =  #{list}"
list.insert_at('bear',-1)
puts "after  =  #{list}"
puts list.size
puts

p "REMOVE_AT: "
puts "before  =  #{list}"
p"list.remove_at(0).value = #{list.remove_at(0).value}"
puts "after  =  #{list}"
p"list.remove_at(-1).value = #{list.remove_at(-1).value}"
puts "after  =  #{list}"
p"list.remove_at(4).value = #{list.remove_at(4).value}"
puts "after  =  #{list}"
p"list.remove_at(99).value = #{list.remove_at(99)}"
p"list.remove_at(-99).value = #{list.remove_at(-99)}"
puts "after  =  #{list}"

p "INSERT_AT: "
puts "before  =  #{list}"
p"list.insert_at('cow',0)"
list.insert_at('cow',0)
puts "after  =  #{list}"

p"list.insert_at('goat',-1)"
list.insert_at('goat',-1)
puts "after  =  #{list}"

p"list.insert_at('skunk',4)"
list.insert_at('skunk',4)
puts "after  =  #{list}"

p"list.insert_at('weasel', 99)"
list.insert_at('weasel',99)
p"list.insert_at(-99)"
 list.insert_at('ferret',-99)

puts "after  =  #{list}"
