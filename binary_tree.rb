require_relative "node.rb"

class BinaryTree

  def initialize
    @root = Node.new 
  end

  def build_tree(data)
    if @root.value.nil?
      @root.value = data[0]
    end
    (data.length - 1).times do |i|
      new_node = Node.new
      new_node.value = data[i + 1]
      insert_node(new_node, @root) 
    end
  end

  def insert_node(new_node, root)
    if new_node.value < root.value
      if root.left.nil?
        root.left = new_node
        new_node.parent = root
      else
        insert_node(new_node, root.left)
      end
    else 
      if root.right.nil?
        root.right = new_node
        new_node.parent = root
      else
        insert_node(new_node, root.right)
      end
    end
  end

  def to_s
    node = @root
    if node.left
      to_s_left(node.left)
    else
      puts node.value
    end


  end

  def to_s_left(node)
    if node.left
      to_s_left(node.left)
    else
      puts node.value
    end


  end

  def to_s_right(node)

  end

end
