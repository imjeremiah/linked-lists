require "./linked_list.rb"

list = LinkedList.new

list.prepend('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

list.head
list.tail
list.size

puts list

puts list.at(5).value

list.pop

puts list.size
puts list.tail

puts list.contains?('dog')
puts list.contains?('fish')
puts list.find('parrot')
puts list.find('shark')