# Your Code Here
def map (array)
  new_array = []
  array.length.times { |index|
    transformed_value = yield(array[index])
    new_array << transformed_value
  }
  return new_array
end

def reduce(source_array, starting_value* = nil)
  if starting_value 
    accumulator = starting_value
  else 
    accumulator = source_array[0]
  end
  source_array.length.times { |index|
    accumulator = yield(accumulator, source_array[index])
  }
   return accumulator
end 