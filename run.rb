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
