def sort_array_asc(input)
  input.sort do |a, b|
    a <=> b
  end
end

def sort_array_desc(input)
  input.sort do |a, b|
    if a > b
      -1
    elsif a == b
      0
    else
      1
    end
  end
end

def sort_array_char_count(input)
  input.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(input)
  output = []
  temp = 0
  temp1 = 0
  input.each_with_index do |element, index|
    if index == 1
      temp = element
      output << element
    elsif index == 2
      output << temp
      output[1] = element
    else
      output << element
    end
  end
  return output
end

def reverse_array(input)
  input.reverse
end


def kesha_maker(input)
  output = []
  input.each do |element|
    temp = element.split(//)
    temp.insert(2, "$")
    temp.delete_at(3)
    final_element = temp.join
    output << final_element
  end
  return output
end

def find_a(input)
  output = []
  input.each do |element|
    if element.start_with?("a")
      output << element
    end
  end
  return output
end

def sum_array(input)
  input.inject do |sum, n|
    sum + n
  end
end

def add_s(input)
  input.each_with_index.collect do |element, index|
    if index != 1
      element << "s"
      "#{element}"
    else
      "#{element}"
    end
  end
end