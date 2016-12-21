require_relative "binary_tree.rb"

x = BinaryTree.new
a = [1, 2, 3, 4, 5]
x.build_tree(a)
x.to_s
