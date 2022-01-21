
require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*arr)
    @list = arr
  end

  def each
    @list.each { |n| yield n if block_given? }
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 }) # true
puts(list.all? { |e| e > 5 }) # false

# Test #any?
puts(list.any? { |e| e == 2 }) # true
puts(list.any? { |e| e == 5 }) # false

# Test #filter
puts list.filter(&:even?)