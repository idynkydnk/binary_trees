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
a = [33, 22, 33, 18, 5, 34, 53, 21, 42]
z.build_tree(a)
puts
puts
b = z.breadth_first_search(5)
puts
z.to_s
puts
puts b.value
x = BinaryTree.new
a = [1, 2, 34, 23, 6, 65, 34, 674, 2323, 45, 3, 5, 6, 7, 8]
x.build_tree(a)
b = x.depth_first_search(34)
puts b.value
