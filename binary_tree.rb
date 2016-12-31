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
    stack = []
    ignore_left = false
    loop do
      if ignore_left
        ignore_left = false
      else
        if node.left
          stack << node
          node = node.left
          next
        end
      end

      print node.value.to_s + ", "

      if node.right
        node = node.right
        next
      end

      if stack.length == 0
        print "end"
        puts
        break
      end

      node = stack.pop
      ignore_left = true
    end 
  end

  def depth_first_search(value)
    node = @root
    stack = []
    ignore_left = false
    loop do
      if ignore_left
        ignore_left = false
      else
        if node.left
          stack << node
          node = node.left
          next
        end
      end

      if node.value == value
        return node
      end

      if node.right
        node = node.right
        next
      end

      return nil if stack.length == 0

      node = stack.pop
      ignore_left = true
    end 
  
  end

  def breadth_first_search(value)
    node = @root  
    queue = []
    if node.value == value
      return node
    end   
    loop do
      if node.left
        return node.left if node.left.value == value
      end
      if node.right
        return node.right if node.right.value == value
      end
      queue << node.left if node.left
      queue << node.right if node.right
      if queue.empty?
        return nil
      end
      node = queue.shift
    end
  end

  def dfs_rec(value, node = @root)
    return nil if node.nil?
    return node if node.value == value
    left_node = dfs_rec(value, node.left)
    right_node = dfs_rec(value, node.right)
    left_node or right_node
  end

end
