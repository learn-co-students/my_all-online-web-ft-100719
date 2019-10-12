require 'pry'

def my_all?(collection)
  i=0
  block_return_values = []
  while i < collection.length
    block_return_values<< yield(collection[i])# when code gets run here, it send whatever is passed in as argument to the block. It gets evaluated, and the return value is passed into the new array.
    i+=1
  end

  if block_return_values.include?(false)
    false
  else
    true
  end
end
