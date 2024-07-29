require_relative 'lib/linked_list'
require_relative 'lib/node'

def do_append(list)
  list.append('dog')
  list.append('cat')
  list.append('parrot')
  list.append('hamster')
  list.append('snake')
end

def test_append(list)
  puts
  puts "list = #{list}"
  puts 'press enter to start #append'
  gets
  items = ['dog','cat','parrot','hamster','snake']
  items.each do |item|
    print "list.append(#{item})"
    gets
    list.append(item)
    puts "list = #{list}"
    gets.chomp
  end
  puts "test ends here"
  puts
end

def do_prepend(list)
  prepend("badger")
  prepend("racoon")
  prepend("goat")
  prepend("gecko")
end

def test_prepend(list)
  puts
  puts "list = #{list}"
  puts
  puts "press enter to start #prepend"
  gets
  items = ['badger','racoon','goat','gecko']
  items.each do |item|
    print "list.prepend(#{item})"
    gets
    list.prepend(item)
    puts "list = #{list}"
    gets
  end
  puts "test ends here"
  puts
end

def test_size(list)
  puts
  puts "list = #{list}"
  puts 'press enter to start #size'
  gets

  empty_list = LinkedList.new
  puts "show empty list size:"
  gets
  puts empty_list.size
  gets

  puts 'show list size:'
  gets
  puts list.size
  gets
  puts "test ends here"
  puts
end

def test_at(list)
  puts
  puts "list = #{list}"
  puts 'press enter to start #at'
  gets
  test_cases = [0,1,99,-1,-2,-99]
  test_cases.each do |i|
    print "list.at(#{i}).value = "
    node = list.at(i)
    print node.value if node != nil
    puts
    gets
  end
  puts "test ends here"
  puts
end

def test_contains?(list)
  puts
  puts "list = #{list}"
  puts "press enter to start #contains?"
  gets

  items = [1,'whale','dog','cat','owl','seal']
  items.each do |item|
    puts "list.contains?(#{item})  = #{list.contains?(item)}"
    gets
  end

  puts "test ends here"
  puts
end

def test_find(list)
  puts
  puts "list = #{list}"
  puts "press enter to start #find"
  gets
  items = ['cow','dog','hamster','sea lion']
  items.each do |item|
    puts "list.find(#{item}) = #{list.find(item)}"
    gets
  end
  puts "test ends here"
end

def test_find_node(list)
  puts
  puts "list = #{list}"
  puts "press enter to start #find_node"
  gets
  items = ['cow','dog','hamster','sea lion']
  items.each do |item|
    pet = list.find_node(item)
    puts "list.find_node(#{item}) = #{pet.value if pet != nil}"
    gets
  end
  puts "test ends here"
end

def test_insert_at(list)
  puts "list = #{list}"
  puts "press enter to start #remove_at"
  gets
  indexes = [0,1,-1,99,-99,3]
  items = ['TOM','JOHN','MIKE','HAN','TONY','JOE']
  count = 0
  indexes.each do |index|
    puts "list.insert_at(#{items[count]},#{index})"
    list.insert_at(items[count],index)
    puts list
    count+=1
    gets
  end
  puts "test ends here"
  puts
end

def test_remove_at(list)
  puts
  puts "list = #{list}"
  puts "press enter to start #remove_at"
  gets
  indexes = [3,1,-1,99,-99,0]
  indexes.each do |index|
    puts "list.remove_at(#{index})"
    list.remove_at(index)
    puts list
    gets
  end
  puts "test ends here"
end

list = LinkedList.new
do_append(list)
# test_append(list)
# test_prepend(list)
# test_at(list)
# test_contains?(list)
# test_find(list)
# test_find_node(list)
# test_at(list)
# test_insert_at(list)
# test_remove_at(list)
