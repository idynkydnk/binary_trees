require_relative "node.rb"

class BinaryTree

  def initialize
    @root = Node.new 
  end

  def build_tree(data)
    if @root.value.nil?
      @root.value = data[0]
    end
    node = @root
    (data.length - 1).times do |i|
      new_node = Node.new
      new_node.value = data[i + 1]
      if new_node.value < node.value
        new_node.right = node
        node.left = new_node
      else
        new_node.left = node
        node.right = new_node
      end
        

      puts i + 1
    end
  end

  def old_build_tree(data)
    if data.length == 1
      @root.value = data[0]
    else
      middle = data.length / 2
      lower_middle = middle - 1
      node = @root
      node.value = data[middle]
      until lower_middle < 0 
        node.left = Node.new
        node.left.value = data[lower_middle]
        node.left.parent = node
        node = node.left 
        lower_middle -= 1
      end
      node = @root
      until middle == (data.length - 1)
        node.right = Node.new
        node.right.value = data[middle + 1]
        node.right.parent = node
        node = node.right
        middle += 1 
      end
    end
      
  end

  def to_s
    node = @root
    until !node.left
      node = node.left
    end
    while node.parent
      puts node.value
      node = node.parent
    end
    until !node.right
      puts node.value
      node = node.right
    end
    puts node.value
  end

end
