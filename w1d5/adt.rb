class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end
end

# a = Stack.new
# a.add("tray1")
# a.add("tray2")
# p a.show
# a.remove
# p a.show
# a.add("tray3")
# p a.show

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end
end

# q = Queue.new
# q.enqueue("customer1")
# q.enqueue("customer2")
# p q.show
# q.enqueue("customer3")
# q.dequeue
# p q.show

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map.each do |pair|
      if pair[0] == key
        pair[1] = value
        return
      end
    end
    @map << [key, value]
  end

  def lookup(key)
    @map.each { |pair| return pair[1] if pair[0] == key }
    "Key not found"
  end

  def remove(key)
    @map.reject! { |pair| pair[0] == key }
  end

  def show
    deep_dup(@map)
  end
  
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end

end

# m = Map.new
# m.assign("donkey", "an animal")
# # p m.show
# m.assign("computer", "machine to process data")
# # p m.show
# m.assign("donkey", "horse")
# # p m.show
# # p m.lookup("computer")
# # p m.lookup("monitor")
# m.remove("donkey")
# p m.show
