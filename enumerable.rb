module MyEnumerable
  def all?
    result = false
    @list.each do |n|
      result = true if yield(n)
    end
    result
  end

  def any?
    any = false
    @list.each do |n|
      any = true if yield(n)
    end
    any
  end

  def filter
    filtered_list = []
    @list.each do |n|
      filtered_list.push(n) if yield(n)
    end
    filtered_list
  end
end
