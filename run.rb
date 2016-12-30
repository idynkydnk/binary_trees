require_relative "binary_tree.rb"

x = BinaryTree.new
a = [1, 2, 3, 4, 5]
x.build_tree(a)
x.to_s
puts
puts
y = BinaryTree.new
a = [2, 5, 3, 9, 1, 4]
y.build_tree(a)
y.to_s
z = BinaryTree.new
a = [2, 1, 3, 8, 5, 34, 53, 21, 42]
z.build_tree(a)
puts
puts
b = z.breadth_first_search(3)
puts
puts
puts b.value
