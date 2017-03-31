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
