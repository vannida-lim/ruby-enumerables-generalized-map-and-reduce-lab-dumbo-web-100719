# Your Code Here
def map (array)
  new_array = []
  array.length.times { |index|
    transformed_value = yield(array[index])
    new_array << transformed_value
  }
  return new_array
end

def reduce(source_array, starting_value = nil)
  if starting_value 
    reduction = starting_value
    i = 0
  else reduction = source_array[0]
    i = 1 
  end
  array.length.times { |index|
    reduction = yield(reduction, source_array[i])
    }
   reduction
end 