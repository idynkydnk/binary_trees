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
      until lower_middle < 0 
        puts node.value
        node.left = Node.new
        node.left.value = data[lower_middle - 1]
        node.left.parent = node
        node = node.left 
        lower_middle -= 1
      end
      node = @root
      until middle > data.length
        node.right = Node.new
        node.right.value = data[middle + 1]
        node.right.parent = node
        node = node.right
        puts node.value
        middle += 1 
      end
    end
      
  end

  def to_s
    node = @root
    while node.value
      puts node.value
      node = node.left
    end
  end

end
