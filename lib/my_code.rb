# Your Code Here
def map (array)
  new_array = []
  array.length.times do |x| 
    new_array.push(yield(array[x]))
  end 
  new_array
end 

def reduce(array, starting_value = nil)
  if starting_value
    sum = starting_value
    i= 0 
  else 
    sum = array[0]
    i = 1 
  end 
    array.length.times do |length|
      sum = yield(sum, array[length])
    end 
    sum 
  end 