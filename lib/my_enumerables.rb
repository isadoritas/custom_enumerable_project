module Enumerable
  # Your code goes here
end

class Array
  def my_each
  for i in 0...self.length
    yield(self[i])
  end
  self
end

def my_all?
  self.my_each { |element| return false unless yield(element) }
  true
end


def my_any?
  self.my_each { |element| return true if yield(element) }
  false
end

def my_count
  if block_given?
  self.select { |element| yield(element)}.size
  else
    self.size
end
end

def my_each_with_index
    self.each_with_index { |element, index| yield(element, index) }
end

def my_inject(initial_value)
  self.inject(initial_value) { |operation, value| yield(operation, value)}
end

def my_map
  self.map { |value| yield(value) }
end

def my_none?
  self.none? { |value| yield(value) }
end

def my_select
  self.select { |value| yield(value )}
end

end


