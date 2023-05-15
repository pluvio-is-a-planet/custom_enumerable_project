module Enumerable
  # Your code goes here
  def my_each_with_index
    if block_given?
      length.times do |index|
        item = self[index]
        yield item, index
      end
    end
    self
  end

  def my_select
    arr = []
    if block_given?
      length.times do |index|
        item = self[index]
        arr << item if yield item
      end
    end
    arr
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    if block_given?
      length.times do |index|
        item = self[index]
        yield item
      end
    end
    self
  end
end
