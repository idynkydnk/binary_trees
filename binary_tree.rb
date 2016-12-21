require_relative "node.rb"

class BinaryTree

  def initialize
    @root = Node.new 
  end

  def build_tree(data)
    if data.length == 1
      @root.value = data[0]
    else
      middle = data.length / 2
      lower_middle = middle
      node = @root
      node.value = data[middle]
      while data[lower_middle - 1]
        node.left = Node.new
        node.left.value = data[middle - 1]
        node.left.parent = node
        node = node.left 
        lower_middle -= 1
      end
    end
      
  end

  def to_s
    puts @root.value
    puts @root.left.value
  end

end
