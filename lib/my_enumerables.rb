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

  def my_all?
    return unless block_given?

    length.times do |index|
      item = self[index]
      return false unless yield item
    end

    true
  end

  def my_any?
    return unless block_given?

    length.times do |index|
      item = self[index]
      return true if yield item
    end

    false
  end

  def my_none?
    return unless block_given?

    length.times do |index|
      item = self[index]
      return false if yield item
    end

    true
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
