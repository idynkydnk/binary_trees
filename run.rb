require_relative "binary_tree.rb"

a = BinaryTree.new
b = [18, 2, 3, 34, 4, 9, 8, 23, 14, 12, 4, 5]
a.build_tree(b)
puts "Tree has been built..."
puts "Printing tree values in order..."
a.to_s
puts
c = a.breadth_first_search(34)
puts "Breadth first search for a value of 34 found... " + c.to_s
puts "Value of that node is... " + c.value.to_s
puts
d = a.depth_first_search(12)
puts "Depth first search for a value of 12 found... " + d.to_s
puts "Value of that node is... " + d.value.to_s
puts
e = a.dfs_rec(5)
puts "Depth first recursive search for a value of 5 found... " + e.to_s
puts "Value of that node is... " + e.value.to_s

