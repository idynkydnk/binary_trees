require_relative "node.rb"

class BinaryTree

  def initialize
    @root = nil
  end

  def build_tree(data)
    middle = data / 2
    @root = Node.new(data[middle])


end
