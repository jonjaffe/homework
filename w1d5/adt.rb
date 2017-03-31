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

a = Stack.new
a.add("tray1")
a.add("tray2")
p a.show
a.remove
p a.show
a.add("tray3")
p a.show
